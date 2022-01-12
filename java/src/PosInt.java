public final class PosInt {
  private final int contained;

  public PosInt(int hopefullyPos) {
    if (hopefullyPos > 0)
      contained = hopefullyPos;

    throw new IllegalArgumentException("Cannot instantiate a PosInt with a negative integer");
  }

  public int val() {
    return contained;
  }
}
