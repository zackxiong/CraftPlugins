package net.sourceforge.pinyin4j;

import com.p032a.p033a.p034a.C0131f;
import com.p032a.p033a.p034a.C0133m;

class PinyinRomanizationTranslator {
    PinyinRomanizationTranslator() {
    }

    static String convertRomanizationSystem(String str, PinyinRomanizationType pinyinRomanizationType, PinyinRomanizationType pinyinRomanizationType2) {
        String extractPinyinString = TextHelper.extractPinyinString(str);
        String extractToneNumber = TextHelper.extractToneNumber(str);
        String str2 = null;
        try {
            C0131f b = PinyinRomanizationResource.getInstance().getPinyinMappingDoc().m3447b(new StringBuffer().append("//").append(pinyinRomanizationType.getTagName()).append("[text()='").append(extractPinyinString).append("']").toString());
            if (b != null) {
                str2 = new StringBuffer().append(b.m3463c(new StringBuffer().append("../").append(pinyinRomanizationType2.getTagName()).append("/text()").toString())).append(extractToneNumber).toString();
            }
        } catch (C0133m e) {
            e.printStackTrace();
        }
        return str2;
    }
}
