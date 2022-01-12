public class MATH3257Model implements IMATH3257Model {

  @Override
  public void execute(IMATH3257Algorithm toExecute) {
    toExecute.execute();
  }
}
