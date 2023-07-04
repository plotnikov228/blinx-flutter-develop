@injectable
class {{name.pascalCase()}}UseCase extends UseCase<{{input_type.pascalCase()}}, {{output_type.pascalCase()}}> {
  @override
  {{output_type.pascalCase()}} call({{input_type.pascalCase()}} input) {
    // TODO: implement usecase
  }
}
