@injectable
class {{name.pascalCase()}}UseCase extends FutureOutputUseCase<{{output_type.pascalCase()}}> {
  @override
  Future<{{output_type.pascalCase()}}> call() {
    // TODO: implement usecase
  }
}
