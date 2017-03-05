package net.sourceforge.pinyin4j;

import com.p032a.p033a.p034a.C0130d;
import com.p032a.p033a.p034a.C0133m;
import com.p032a.p033a.p034a.C0138q;
import java.io.FileNotFoundException;
import java.io.IOException;

class PinyinRomanizationResource {
    private C0130d pinyinMappingDoc;

    /* renamed from: net.sourceforge.pinyin4j.PinyinRomanizationResource.1 */
    static class C07391 {
    }

    private static class PinyinRomanizationSystemResourceHolder {
        static final PinyinRomanizationResource theInstance;

        static {
            theInstance = new PinyinRomanizationResource(null);
        }

        private PinyinRomanizationSystemResourceHolder() {
        }
    }

    private PinyinRomanizationResource() {
        initializeResource();
    }

    PinyinRomanizationResource(C07391 c07391) {
        this();
    }

    static PinyinRomanizationResource getInstance() {
        return PinyinRomanizationSystemResourceHolder.theInstance;
    }

    private void initializeResource() {
        try {
            setPinyinMappingDoc(C0138q.m3548a("", ResourceHelper.getResourceInputStream("/pinyindb/pinyin_mapping.xml")));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (C0133m e3) {
            e3.printStackTrace();
        }
    }

    private void setPinyinMappingDoc(C0130d c0130d) {
        this.pinyinMappingDoc = c0130d;
    }

    C0130d getPinyinMappingDoc() {
        return this.pinyinMappingDoc;
    }
}
