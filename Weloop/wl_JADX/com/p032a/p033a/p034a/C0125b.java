package com.p032a.p033a.p034a;

/* renamed from: com.a.a.a.b */
class C0125b {
    private final int[] f2185a;
    private int f2186b;
    private int f2187c;

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer((this.f2185a.length * 11) / 10);
        int length = this.f2187c < this.f2185a.length ? this.f2185a.length - this.f2187c : 0;
        while (length < this.f2185a.length) {
            int i = this.f2185a[(this.f2186b + length) % this.f2185a.length];
            if (i < 65536) {
                stringBuffer.append((char) i);
            } else {
                stringBuffer.append(Integer.toString(i - 65536));
            }
            length++;
        }
        return stringBuffer.toString();
    }
}
