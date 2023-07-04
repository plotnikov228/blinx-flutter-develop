@injectable
class {{name.pascalCase()}}UseCase extends OutputUseCase<{{output_type.pascalCase()}}> {
  @override
  {{output_type.pascalCase()}} call() {
    // TODO: implement usecase
  }
}
