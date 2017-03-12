package net.sourceforge.pinyin4j;

import com.p032a.p033a.p034a.C0131f;
import com.p032a.p033a.p034a.C0133m;

class GwoyeuRomatzyhTranslator {
    private static String[] tones;

    static {
        tones = new String[]{"_I", "_II", "_III", "_IV", "_V"};
    }

    GwoyeuRomatzyhTranslator() {
    }

    static String convertHanyuPinyinToGwoyeuRomatzyh(String str) {
        String extractPinyinString = TextHelper.extractPinyinString(str);
        String extractToneNumber = TextHelper.extractToneNumber(str);
        String str2 = null;
        try {
            C0131f b = GwoyeuRomatzyhResource.getInstance().getPinyinToGwoyeuMappingDoc().m3447b(new StringBuffer().append("//").append(PinyinRomanizationType.HANYU_PINYIN.getTagName()).append("[text()='").append(extractPinyinString).append("']").toString());
            if (b != null) {
                str2 = b.m3463c(new StringBuffer().append("../").append(PinyinRomanizationType.GWOYEU_ROMATZYH.getTagName()).append(tones[Integer.parseInt(extractToneNumber) - 1]).append("/text()").toString());
            }
        } catch (C0133m e) {
            e.printStackTrace();
        }
        return str2;
    }
}
