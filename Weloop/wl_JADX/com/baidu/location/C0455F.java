package com.baidu.location;

import java.util.List;

/* renamed from: com.baidu.location.F */
class C0455F implements C0452e {
    public static String iB;
    private String f3865Y;
    private boolean f3866Z;
    private boolean f3867a;
    private String aa;
    private int ab;
    private int ac;
    private String ad;
    private char ae;
    private String af;
    private boolean ag;
    private int ah;
    private double ai;
    private double aj;
    private List ak;
    private boolean al;
    private int am;
    private final boolean an;
    public int iw;

    static {
        iB = null;
    }

    public C0455F(List list, String str, String str2, String str3) {
        this.f3867a = false;
        this.f3865Y = "";
        this.f3866Z = false;
        this.aa = "";
        this.ab = 0;
        this.ac = 0;
        this.ad = "";
        this.ae = 'N';
        this.af = "";
        this.ag = false;
        this.ah = 1;
        this.ai = 0.0d;
        this.aj = 0.0d;
        this.ak = null;
        this.al = false;
        this.am = 0;
        this.an = false;
        this.iw = 0;
        this.ak = list;
        this.f3865Y = str;
        this.ad = str2;
        this.af = str3;
        m5557a();
    }

    private void m5557a() {
        int i = 0;
        if (m5558a(this.af)) {
            String substring = this.af.substring(0, this.af.length() - 3);
            int i2 = 0;
            while (i < substring.length()) {
                if (substring.charAt(i) == ',') {
                    i2++;
                }
                i++;
            }
            String[] split = substring.split(",", i2 + 1);
            if (split.length >= 6) {
                if (!(split[2].equals("") || split[split.length - 3].equals("") || split[split.length - 2].equals("") || split[split.length - 1].equals(""))) {
                    this.ah = Integer.valueOf(split[2]).intValue();
                    this.ai = Double.valueOf(split[split.length - 3]).doubleValue();
                    this.aj = Double.valueOf(split[split.length - 2]).doubleValue();
                    this.ag = true;
                }
            } else {
                return;
            }
        }
        this.f3867a = this.ag;
    }

    private boolean m5558a(String str) {
        if (str == null || str.length() <= 8) {
            return false;
        }
        int i = 0;
        for (int i2 = 1; i2 < str.length() - 3; i2++) {
            i ^= str.charAt(i2);
        }
        return Integer.toHexString(i).equalsIgnoreCase(str.substring(str.length() + -2, str.length()));
    }

    public double cE() {
        return this.aj;
    }

    public String cF() {
        return this.aa;
    }

    public boolean cG() {
        return this.f3867a;
    }

    public double cH() {
        return this.ai;
    }

    public int cI() {
        return this.ab;
    }
}
