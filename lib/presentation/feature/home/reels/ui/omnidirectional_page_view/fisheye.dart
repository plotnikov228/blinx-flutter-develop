import 'package:flutter/material.dart';
import 'package:graphx/graphx.dart';
import 'dart:ui' as ui;

class TriangleGrid extends GShape {
  double res;
  int rows, cols;
  bool debugTriangles = false;

  late List<double> vertices;
  late List<double> uvData;
  late List<int> indices;

  GTexture? texture;

  TriangleGrid({
    GSprite? doc,
    this.res = 20,
    this.cols = 10,
    this.rows = 10,
  }) {
    doc?.addChild(this);
    makeTriangles();
    draw();
  }

  void draw() {
    graphics.clear();
    if (texture != null) {

      graphics
          .beginBitmapFill(texture!, null, false, false)
          .drawTriangles(vertices, indices, uvData)
          .endFill();
    }
    if (debugTriangles) {
      graphics
          .lineStyle(0, Colors.white30)
          .drawTriangles(vertices, indices, uvData)
          .endFill();
    }
  }

  void makeTriangles() {
    vertices = [];
    uvData = [];
    indices = [];
    var total = rows * cols;
    for (var c = 0; c < total; ++c) {
      var i = c ~/ cols;
      var j = c % cols;
      vertices.addAll([j * res, i * res]);
      uvData.addAll([
        j / (cols - 1),
        i / (rows - 1),
      ]);
      if (i < rows - 1 && j < cols - 1) {
        ///first triangle
        indices.addAll([i * cols + j, i * cols + j + 1, (i + 1) * cols + j]);

        ///second triangle
        indices.addAll(
            [i * cols + j + 1, (i + 1) * cols + j + 1, (i + 1) * cols + j]);
      }
    }
  }
}

class DrawTriangleGridScene extends GSprite {
  final double mx;
  final double my;

  final ui.Image image;
  final double spring;
  final double stiff;
  final double damp;
  final double angle;

  static const int res = 3;
  static const double targetRadius = 600;

  /// draw triangle parameters.
  List<double> vertices = <double>[];
  List<int> indices = <int>[];
  List<double> uvts = <double>[];

  double sep = 50 / res;
  int cols = 5 * res, rows = 4 * res;
  double radius = targetRadius;
  late double radiusSq;

  late List<GraphPoint> dots;
  late TriangleGrid triGrid;
  late GSprite container;
  bool inited = false;
  double textureW = 0, textureH = 0;

  DrawTriangleGridScene(this.image, this.mx, this.my, {this.spring = 0.0025, this.stiff = 0.02, this.damp = 0.98, this.angle = 0});

  @override
  Future<void> addedToStage() async {
    stage!.color = Colors.grey.shade800;
    container = GSprite();
    addChild(container);
    mouseChildren = false;
    late GTexture texture;

    try {
      texture = GTexture.fromImage(image);
    } catch (e) {
      throw "We have an error loading the image $e";
    }
    textureW = texture.width!;
    textureH = texture.height!;
    cols = textureW ~/ sep;
    rows = textureH ~/ sep;
    var total = cols * rows;
    if (stage!.pointer!.isDown) {
      radius = -targetRadius / 4;
    } else {
      radius = targetRadius;
    }
    radiusSq = radius * radius;
    /// these are the points that we MOVE to update the grid.
    dots = List.generate(total, (index) {
      var d = GraphPoint();

      /// uncomment this to see the DOTS.
      // container.addChild(d);
      var idx = index % cols;
      var idy = index ~/ cols;
      if (index == 0) {
        d.tx = d.x = 0;
        d.ty = d.y = 0;
      } else {
        d.tx = d.x = idx * sep;
        d.ty = d.y = idy * sep;
      }
      /*var dx = d.x - mx;
      var dy = d.y - my;
      var dsq = dx * dx + dy * dy; // площадь
      if (dsq < radiusSq) {
        var dist = Math.sqrt(dsq);
        var tx = mx + dx / dist * radius;
        var ty = my + dy / dist * radius;
        d.vx += (tx - d.x) * spring;
        d.vy += (ty - d.y) * spring;
      }
      d.vx += (d.tx - d.x) * stiff;
      d.vy += (d.ty - d.y) * stiff;
      d.vx *= damp;
      d.vy *= damp;
      d.x += d.vx * (80 * angle);
      d.y += d.vy * (80 * angle);
      if (d.x.isNaN) d.x = 0;
      if (d.y.isNaN) d.y = 0;*/

      return d;
    });

    triGrid = TriangleGrid(res: sep, cols: cols, rows: rows);

    /// show the triangles lines
    triGrid.debugTriangles = false;
    container.addChildAt(triGrid, 0);
    triGrid.texture = texture;
    triGrid.draw();
    inited = true;
  }

  void adjustContainer() {
    /// resize container based on the image dimensions.
    var tw = textureW;
    var th = textureH;
    var scaleTo = stage!.stageHeight / th;
    container.y = 0;
    container.scale = 1.1;
    container.x = 0;
  }

  @override
  void update(double delta) {
    super.update(delta);
    if (!inited) return;
    // return;

      adjustContainer();
      updatePoints();
      renderPoints();

  }

  void renderPoints() {
    var ver = triGrid.vertices;
    var j = 0;
    for (var i = 0; i < dots.length; ++i) {
      var d = dots[i];
      ver[j++] = d.x;
      ver[j++] = d.y;
    }
    triGrid.draw();
  }

  void updatePoints() {
    // container.x = (sw - cols * sep) / 2;
    // container.y = (sh - rows * sep) / 2;
   // if (stage!.pointer!.isDown) {
      radius = -targetRadius / 4;
    /*} else {
      radius = targetRadius;
    }*/
    radiusSq = radius * radius;

    for (var i = 0; i < dots.length; ++i) {
      var d = dots[i];
      var dx = d.x - mx;
      var dy = d.y - my;
      var dsq = dx * dx + dy * dy; // площадь
      if (dsq < radiusSq) {
        var dist = Math.sqrt(dsq);
        var tx = mx + dx / dist * radius;
        var ty = my + dy / dist * radius;
        d.vx += (tx - d.x) * spring;
        d.vy += (ty - d.y) * spring;
      }
      d.vx += (d.tx - d.x) * stiff;
      d.vy += (d.ty - d.y) * stiff;
      d.vx *= damp;
      d.vy *= damp;
      d.x += d.vx;
      d.y += d.vy;
      if (d.x.isNaN) d.x = 0;
      if (d.y.isNaN) d.y = 0;
    }
  }

  void drawImage() {}
}

class GraphPoint extends GShape {
  double tx = 0, ty = 0, vx = 0, vy = 0;

  GraphPoint() {
    mouseEnabled = false;
    _draw();
  }

  void _draw() {
    graphics
        .beginFill(Colors.yellowAccent.withOpacity(.35))
        .drawCircle(0, 0, 1)
        .endFill();
  }
}