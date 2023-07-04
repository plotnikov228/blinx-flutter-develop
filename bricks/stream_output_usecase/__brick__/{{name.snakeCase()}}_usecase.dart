@injectable
class {{name.pascalCase()}}UseCase extends StreamOutputUseCase<{{output_type.pascalCase()}}> {
  @override
  Stream<{{output_type.pascalCase()}}> call() {
    // TODO: implement usecase
  }
}
