@injectable
class {{name.pascalCase()}}UseCase extends FutureUseCase<{{input_type.pascalCase()}}, {{output_type.pascalCase()}}> {
  @override
  Future<{{output_type.pascalCase()}}> call({{input_type.pascalCase()}} input) {
    // TODO: implement usecase
  }
}
