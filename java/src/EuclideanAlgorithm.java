/**
 * ForAll a In Z
 * ForAll b In Z
 *
 * => Calculates gcd(a,b) in Z
 */
public class EuclideanAlgorithm implements IMATH3257Algorithm {

  private final PosInt a;
  private final PosInt b;

  public EuclideanAlgorithm(PosInt a, PosInt b) {
    this.a = a; // consider checking integer sign in ctor rather than auxiliary class
    this.b = b;
  }


  @Override
  public int execute() {
    int q = (int)Math.floor(a.val() / b.val());
    int r = a.val() - b.val() * q;

    if (r == 1)
      return 1;
    else if (r == 0)
      return q;
    else return new EuclideanAlgorithm(new PosInt(b.val() * q), new PosInt(r))
          .execute();
  }
}
