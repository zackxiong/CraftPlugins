package org.p000a.p001a;

import java.net.URL;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Properties;
import java.util.StringTokenizer;

/* renamed from: org.a.a.p */
public class ProGuard implements org.p000a.p001a.p002d.ProGuard {
    static Class f9504c;
    static Class f9505d;
    static Class f9506e;
    protected Hashtable f9507a;
    protected org.p000a.p001a.p002d.ProGuard f9508b;

    public ProGuard() {
        this.f9507a = new Hashtable(11);
        this.f9508b = new ProGuard();
    }

    public void m11960a(Properties properties, org.p000a.p001a.p002d.ProGuard proGuard) {
        String property = properties.getProperty("log4j.debug");
        if (property == null) {
            property = properties.getProperty("log4j.configDebug");
            if (property != null) {
                org.p000a.p001a.p156b.ProGuard.m11801c("[log4j.configDebug] is deprecated. Use [log4j.debug] instead.");
            }
        }
        if (property != null) {
            org.p000a.p001a.p156b.ProGuard.m11798a(org.p000a.p001a.p156b.ProGuard.m11816a(property, true));
        }
        property = org.p000a.p001a.p156b.ProGuard.m11813a("log4j.threshold", properties);
        if (property != null) {
            proGuard.m11879a(org.p000a.p001a.p156b.ProGuard.m11814a(property, ProGuard.f9490h));
            org.p000a.p001a.p156b.ProGuard.m11796a(new StringBuffer().append("Hierarchy threshold set to [").append(proGuard.m11874a()).append("].").toString());
        }
        m11964b(properties, proGuard);
        m11959a(properties);
        m11965c(properties, proGuard);
        org.p000a.p001a.p156b.ProGuard.m11796a("Finished configuring.");
        this.f9507a.clear();
    }

    public void m11958a(URL url, org.p000a.p001a.p002d.ProGuard proGuard) {
        Properties properties = new Properties();
        org.p000a.p001a.p156b.ProGuard.m11796a(new StringBuffer().append("Reading configuration from URL ").append(url).toString());
        try {
            properties.load(url.openStream());
            m11960a(properties, proGuard);
        } catch (Throwable e) {
            org.p000a.p001a.p156b.ProGuard.m11797a(new StringBuffer().append("Could not read configuration file from URL [").append(url).append("].").toString(), e);
            org.p000a.p001a.p156b.ProGuard.m11799b(new StringBuffer().append("Ignoring configuration file [").append(url).append("].").toString());
        }
    }

    protected void m11959a(Properties properties) {
        String a = org.p000a.p001a.p156b.ProGuard.m11813a("log4j.loggerFactory", properties);
        if (a != null) {
            Class b;
            org.p000a.p001a.p156b.ProGuard.m11796a(new StringBuffer().append("Setting category factory to [").append(a).append("].").toString());
            if (f9504c == null) {
                b = ProGuard.m11955b("org.a.a.d.h");
                f9504c = b;
            } else {
                b = f9504c;
            }
            this.f9508b = (org.p000a.p001a.p002d.ProGuard) org.p000a.p001a.p156b.ProGuard.m11810a(a, b, this.f9508b);
            org.p000a.p001a.p155a.ProGuard.m11774a(this.f9508b, properties, "log4j.factory.");
        }
    }

    static Class m11955b(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable e) {
            throw new NoClassDefFoundError(e.getMessage());
        }
    }

    void m11964b(Properties properties, org.p000a.p001a.p002d.ProGuard proGuard) {
        String str = "log4j.rootLogger";
        String a = org.p000a.p001a.p156b.ProGuard.m11813a("log4j.rootLogger", properties);
        if (a == null) {
            a = org.p000a.p001a.p156b.ProGuard.m11813a("log4j.rootCategory", properties);
            str = "log4j.rootCategory";
        }
        if (a == null) {
            org.p000a.p001a.p156b.ProGuard.m11796a("Could not find root logger information. Is this OK?");
            return;
        }
        ProGuard d = proGuard.m11881d();
        synchronized (d) {
            m11962a(properties, d, str, "root", a);
        }
    }

    protected void m11965c(Properties properties, org.p000a.p001a.p002d.ProGuard proGuard) {
        Enumeration propertyNames = properties.propertyNames();
        while (propertyNames.hasMoreElements()) {
            String str = (String) propertyNames.nextElement();
            if (str.startsWith("log4j.category.") || str.startsWith("log4j.logger.")) {
                String str2 = null;
                if (str.startsWith("log4j.category.")) {
                    str2 = str.substring("log4j.category.".length());
                } else if (str.startsWith("log4j.logger.")) {
                    str2 = str.substring("log4j.logger.".length());
                }
                String a = org.p000a.p001a.p156b.ProGuard.m11813a(str, properties);
                ProGuard a2 = proGuard.m11876a(str2, this.f9508b);
                synchronized (a2) {
                    m11962a(properties, a2, str, str2, a);
                    m11961a(properties, a2, str2);
                }
            } else if (str.startsWith("log4j.renderer.")) {
                String substring = str.substring("log4j.renderer.".length());
                String a3 = org.p000a.p001a.p156b.ProGuard.m11813a(str, properties);
                if (proGuard instanceof org.p000a.p001a.p002d.ProGuard) {
                    org.p000a.p001a.p157c.ProGuard.m11841a((org.p000a.p001a.p002d.ProGuard) proGuard, substring, a3);
                }
            }
        }
    }

    void m11961a(Properties properties, ProGuard proGuard, String str) {
        String a = org.p000a.p001a.p156b.ProGuard.m11813a(new StringBuffer().append("log4j.additivity.").append(str).toString(), properties);
        org.p000a.p001a.p156b.ProGuard.m11796a(new StringBuffer().append("Handling log4j.additivity.").append(str).append("=[").append(a).append("]").toString());
        if (a != null && !a.equals("")) {
            boolean a2 = org.p000a.p001a.p156b.ProGuard.m11816a(a, true);
            org.p000a.p001a.p156b.ProGuard.m11796a(new StringBuffer().append("Setting additivity for \"").append(str).append("\" to ").append(a2).toString());
            proGuard.m11856a(a2);
        }
    }

    void m11962a(Properties properties, ProGuard proGuard, String str, String str2, String str3) {
        String nextToken;
        org.p000a.p001a.p156b.ProGuard.m11796a(new StringBuffer().append("Parsing for [").append(str2).append("] with value=[").append(str3).append("].").toString());
        StringTokenizer stringTokenizer = new StringTokenizer(str3, ",");
        if (!(str3.startsWith(",") || str3.equals(""))) {
            if (stringTokenizer.hasMoreTokens()) {
                nextToken = stringTokenizer.nextToken();
                org.p000a.p001a.p156b.ProGuard.m11796a(new StringBuffer().append("Level token is [").append(nextToken).append("].").toString());
                if (!"inherited".equalsIgnoreCase(nextToken) && !"null".equalsIgnoreCase(nextToken)) {
                    proGuard.m11855a(org.p000a.p001a.p156b.ProGuard.m11814a(nextToken, ProGuard.f9488f));
                } else if (str2.equals("root")) {
                    org.p000a.p001a.p156b.ProGuard.m11801c("The root logger cannot be set to null.");
                } else {
                    proGuard.m11855a(null);
                }
                org.p000a.p001a.p156b.ProGuard.m11796a(new StringBuffer().append("Category ").append(str2).append(" set to ").append(proGuard.m11861f()).toString());
            } else {
                return;
            }
        }
        proGuard.m11862g();
        while (stringTokenizer.hasMoreTokens()) {
            nextToken = stringTokenizer.nextToken().trim();
            if (!(nextToken == null || nextToken.equals(","))) {
                org.p000a.p001a.p156b.ProGuard.m11796a(new StringBuffer().append("Parsing appender named \"").append(nextToken).append("\".").toString());
                ProGuard a = m11957a(properties, nextToken);
                if (a != null) {
                    proGuard.m11852a(a);
                }
            }
        }
    }

    ProGuard m11957a(Properties properties, String str) {
        ProGuard a = m11956a(str);
        if (a != null) {
            org.p000a.p001a.p156b.ProGuard.m11796a(new StringBuffer().append("Appender \"").append(str).append("\" was already parsed.").toString());
            return a;
        }
        Class b;
        String stringBuffer = new StringBuffer().append("log4j.appender.").append(str).toString();
        String stringBuffer2 = new StringBuffer().append(stringBuffer).append(".layout").toString();
        if (f9505d == null) {
            b = ProGuard.m11955b("org.a.a.a");
            f9505d = b;
        } else {
            b = f9505d;
        }
        a = (ProGuard) org.p000a.p001a.p156b.ProGuard.m11811a(properties, stringBuffer, b, null);
        if (a == null) {
            org.p000a.p001a.p156b.ProGuard.m11799b(new StringBuffer().append("Could not instantiate appender named \"").append(str).append("\".").toString());
            return null;
        }
        a.m1a(str);
        if (a instanceof org.p000a.p001a.p002d.ProGuard) {
            if (a.m4b()) {
                Class b2;
                if (f9506e == null) {
                    b2 = ProGuard.m11955b("org.a.a.h");
                    f9506e = b2;
                } else {
                    b2 = f9506e;
                }
                Object obj = (ProGuard) org.p000a.p001a.p156b.ProGuard.m11811a(properties, stringBuffer2, b2, null);
                if (obj != null) {
                    a.m2a((ProGuard) obj);
                    org.p000a.p001a.p156b.ProGuard.m11796a(new StringBuffer().append("Parsing layout options for \"").append(str).append("\".").toString());
                    org.p000a.p001a.p155a.ProGuard.m11774a(obj, properties, new StringBuffer().append(stringBuffer2).append(".").toString());
                    org.p000a.p001a.p156b.ProGuard.m11796a(new StringBuffer().append("End of parsing for \"").append(str).append("\".").toString());
                }
            }
            org.p000a.p001a.p155a.ProGuard.m11774a((Object) a, properties, new StringBuffer().append(stringBuffer).append(".").toString());
            org.p000a.p001a.p156b.ProGuard.m11796a(new StringBuffer().append("Parsed \"").append(str).append("\" options.").toString());
        }
        m11963a(a);
        return a;
    }

    void m11963a(ProGuard proGuard) {
        this.f9507a.put(proGuard.m5d(), proGuard);
    }

    ProGuard m11956a(String str) {
        return (ProGuard) this.f9507a.get(str);
    }
}
