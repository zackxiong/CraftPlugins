package com.yf.gattlib.db;

import com.roscopeco.ormdroid.Entity;
import com.roscopeco.ormdroid.Query;
import java.util.List;

/* compiled from: ProGuard */
public class Relationship extends Entity {
    public int id;
    public String left;
    public String right;

    public static void createRelationship(String str, String str2) {
        if (((Relationship) Entity.query(Relationship.class).where(Query.and(Query.eql("left", str), Query.eql("right", str2))).execute()) == null) {
            Relationship relationship = new Relationship();
            relationship.left = str;
            relationship.right = str2;
            relationship.save();
        }
    }

    public static Relationship getRelationship() {
        return (Relationship) Entity.query(Relationship.class).execute();
    }

    public static Relationship getRelationship(String str, String str2) {
        return (Relationship) Entity.query(Relationship.class).where(Query.and(Query.eql("left", str), Query.eql("right", str2))).execute();
    }

    public static void deleteRelationship(String str, String str2) {
        Relationship relationship = (Relationship) Entity.query(Relationship.class).where(Query.and(Query.eql("left", str), Query.eql("right", str2))).execute();
        if (relationship != null) {
            relationship.delete();
        }
    }

    public static List<Relationship> getAllRelations(String str) {
        return Entity.query(Relationship.class).where(Query.eql("left", str)).executeMulti();
    }
}
