package com.roscopeco.ormdroid;

import java.util.Iterator;
import java.util.LinkedList;

/* compiled from: ProGuard */
class MappingList {
    private final LinkedList<TypeMapping> mappings;

    MappingList() {
        this.mappings = new LinkedList();
    }

    void addMapping(TypeMapping typeMapping) {
        this.mappings.addFirst(typeMapping);
    }

    void removeMapping(TypeMapping typeMapping) {
        this.mappings.remove(typeMapping);
    }

    TypeMapping findMapping(Class<?> cls) {
        Iterator it = this.mappings.iterator();
        while (it.hasNext()) {
            TypeMapping typeMapping = (TypeMapping) it.next();
            if (typeMapping.javaType().isAssignableFrom(cls)) {
                return typeMapping;
            }
        }
        return null;
    }
}
