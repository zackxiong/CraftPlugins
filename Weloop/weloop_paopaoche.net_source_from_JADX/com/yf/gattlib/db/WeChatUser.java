package com.yf.gattlib.db;

import com.roscopeco.ormdroid.Entity;

/* compiled from: ProGuard */
public class WeChatUser extends Entity {
    public static final int LEVEL_BLACK = 1;
    public static final int LEVEL_UNKNOWN = 2;
    public static final int LEVEL_WHITE = 0;
    public int id;
    public int level;
    public String name;
    public int selected;

    public WeChatUser() {
        this.level = LEVEL_UNKNOWN;
        this.selected = 0;
    }

    public boolean isWhite() {
        return this.level == 0;
    }

    public boolean isBlack() {
        return LEVEL_BLACK == this.level;
    }

    public boolean isSelected() {
        return this.selected != 0;
    }

    public void setSelected(boolean z) {
        this.selected = z ? LEVEL_BLACK : 0;
    }
}
