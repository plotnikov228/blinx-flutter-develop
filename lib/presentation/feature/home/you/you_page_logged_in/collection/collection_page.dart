import 'package:blinx/presentation/feature/home/you/cubit/collection_cubit.dart';
import 'package:blinx/presentation/feature/home/you/cubit/collection_state.dart';
import 'package:blinx/presentation/feature/home/you/you_page_logged_in/collection/ui/collection_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollectionCubit, CollectionState>(
      builder: (context, state) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  const SizedBox(height: 30),
                  CollectionGrid(
                    collections: state.collections,
                  ),
                ]),
              )
            ],
          ),
        );
      },
    );
  }
}
