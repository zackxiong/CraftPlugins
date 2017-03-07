package com.yf.gattlib.db;

import com.roscopeco.ormdroid.Entity;
import com.roscopeco.ormdroid.Query;
import java.util.List;

/* compiled from: ProGuard */
public class MessageConfig extends Entity {
    public static final int STATE_BLACK = 1;
    public static final int STATE_WHITE = 0;
    public int id;
    public byte msgId;
    public int state;

    public static MessageConfig getMessageConfig(byte b) {
        MessageConfig messageConfig = (MessageConfig) Entity.query(MessageConfig.class).where(Query.eql("msgId", Byte.valueOf(b))).execute();
        if (messageConfig != null) {
            return messageConfig;
        }
        messageConfig = new MessageConfig();
        messageConfig.msgId = b;
        messageConfig.state = 0;
        return messageConfig;
    }

    public static List<MessageConfig> getAllMessageConfig() {
        return Entity.query(MessageConfig.class).executeMulti();
    }

    public int save(int i) {
        this.state = i;
        return super.save();
    }
}
