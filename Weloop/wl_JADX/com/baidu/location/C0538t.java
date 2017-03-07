package com.baidu.location;

import android.util.Xml;
import java.io.StringReader;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.location.t */
class C0538t implements C0452e {
    private double f4103Y;
    private float f4104Z;
    private double f4105a;
    private boolean aa;
    private boolean ab;
    public String hA;
    public String hD;
    public String hs;
    public String hu;
    public String hv;
    public String hx;
    public String hy;

    public C0538t() {
        this.f4105a = Double.MIN_VALUE;
        this.f4103Y = Double.MIN_VALUE;
        this.f4104Z = 0.0f;
        this.aa = false;
        this.ab = true;
        this.hy = "";
        this.hv = "";
        this.hx = "";
        this.hu = "";
        this.hD = "";
        this.hA = "";
        this.hs = "";
    }

    public C0538t(String str) {
        boolean z = false;
        this.f4105a = Double.MIN_VALUE;
        this.f4103Y = Double.MIN_VALUE;
        this.f4104Z = 0.0f;
        this.aa = false;
        this.ab = true;
        this.hy = "";
        this.hv = "";
        this.hx = "";
        this.hu = "";
        this.hD = "";
        this.hA = "";
        this.hs = "";
        XmlPullParser newPullParser = Xml.newPullParser();
        newPullParser.setInput(new StringReader(str));
        newPullParser.next();
        for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.next()) {
            switch (eventType) {
                case ProGuard.styleable.View_paddingStart /*2*/:
                    if (!z) {
                        if (!newPullParser.getName().equals("LocationRS")) {
                            break;
                        }
                        z = true;
                        break;
                    }
                    String name = newPullParser.getName();
                    if (name == null) {
                        continue;
                    } else if (name.equals("latitude")) {
                        try {
                            this.f4105a = Double.valueOf(newPullParser.nextText()).doubleValue();
                            break;
                        } catch (Exception e) {
                            this.ab = false;
                            break;
                        }
                    } else if (name.equals("longitude")) {
                        try {
                            this.f4103Y = Double.valueOf(newPullParser.nextText()).doubleValue();
                            break;
                        } catch (Exception e2) {
                            this.ab = false;
                            break;
                        }
                    } else if (name.equals("hpe")) {
                        try {
                            this.f4104Z = Float.valueOf(newPullParser.nextText()).floatValue();
                            break;
                        } catch (Exception e3) {
                            this.ab = false;
                            break;
                        }
                    } else if (name.equals("country")) {
                        try {
                            this.hx = newPullParser.getAttributeValue(0);
                        } catch (Exception e4) {
                        }
                        try {
                            this.hv = newPullParser.nextText();
                            break;
                        } catch (Exception e5) {
                            break;
                        }
                    } else if (name.equals("province")) {
                        try {
                            this.hu = newPullParser.nextText();
                            break;
                        } catch (Exception e6) {
                            break;
                        }
                    } else if (name.equals("region")) {
                        try {
                            this.hD = newPullParser.nextText();
                            break;
                        } catch (Exception e7) {
                            break;
                        }
                    } else if (name.equals("street-number")) {
                        try {
                            this.hs = newPullParser.nextText();
                            break;
                        } catch (Exception e8) {
                            break;
                        }
                    } else if (name.equals("city")) {
                        try {
                            this.hy = newPullParser.nextText();
                            break;
                        } catch (Exception e9) {
                            break;
                        }
                    } else if (name.equals("address-line")) {
                        try {
                            this.hA = newPullParser.nextText();
                            break;
                        } catch (Exception e10) {
                            break;
                        }
                    } else {
                        try {
                            if (!name.equals("error")) {
                                break;
                            }
                            this.ab = false;
                            break;
                        } catch (Exception e11) {
                            return;
                        }
                    }
                default:
                    break;
            }
        }
    }

    public double b0() {
        return this.f4103Y;
    }

    public float b1() {
        return this.f4104Z;
    }

    public String b2() {
        if (!this.ab) {
            return null;
        }
        return String.format(Locale.CHINA, "&skyll=%.6f|%.6f|%.1f&skyflag=1&skyadd=%s|%s|%s", new Object[]{Double.valueOf(this.f4103Y), Double.valueOf(this.f4105a), Float.valueOf(this.f4104Z), this.hv, this.hy, this.hA});
    }

    public boolean b3() {
        return this.hv.equals("China") || this.hv.equals("Taiwan") || this.hx.equals("HK");
    }

    public boolean bY() {
        return this.ab;
    }

    public double bZ() {
        return this.f4105a;
    }
}
