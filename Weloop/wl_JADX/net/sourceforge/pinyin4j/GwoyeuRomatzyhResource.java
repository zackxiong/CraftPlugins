package net.sourceforge.pinyin4j;

import com.p032a.p033a.p034a.C0130d;
import com.p032a.p033a.p034a.C0133m;
import com.p032a.p033a.p034a.C0138q;
import java.io.FileNotFoundException;
import java.io.IOException;

class GwoyeuRomatzyhResource {
    private C0130d pinyinToGwoyeuMappingDoc;

    /* renamed from: net.sourceforge.pinyin4j.GwoyeuRomatzyhResource.1 */
    static class C07381 {
    }

    private static class GwoyeuRomatzyhSystemResourceHolder {
        static final GwoyeuRomatzyhResource theInstance;

        static {
            theInstance = new GwoyeuRomatzyhResource(null);
        }

        private GwoyeuRomatzyhSystemResourceHolder() {
        }
    }

    private GwoyeuRomatzyhResource() {
        initializeResource();
    }

    GwoyeuRomatzyhResource(C07381 c07381) {
        this();
    }

    static GwoyeuRomatzyhResource getInstance() {
        return GwoyeuRomatzyhSystemResourceHolder.theInstance;
    }

    private void initializeResource() {
        try {
            setPinyinToGwoyeuMappingDoc(C0138q.m3548a("", ResourceHelper.getResourceInputStream("/pinyindb/pinyin_gwoyeu_mapping.xml")));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        } catch (C0133m e3) {
            e3.printStackTrace();
        }
    }

    private void setPinyinToGwoyeuMappingDoc(C0130d c0130d) {
        this.pinyinToGwoyeuMappingDoc = c0130d;
    }

    C0130d getPinyinToGwoyeuMappingDoc() {
        return this.pinyinToGwoyeuMappingDoc;
    }
}
