package com.tencent.p099b.p100a.p102b;

import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

/* renamed from: com.tencent.b.a.b.n */
final class C0685n implements FileFilter {
    C0685n() {
    }

    public final boolean accept(File file) {
        return Pattern.matches("cpu[0-9]", file.getName());
    }
}
