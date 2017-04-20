.class public interface abstract annotation Lcom/yf/gattlib/http/afinal/annotation/view/ViewInject;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/yf/gattlib/http/afinal/annotation/view/ViewInject;
        click = ""
        itemClick = ""
        itemLongClick = ""
        longClick = ""
        select = .subannotation Lcom/yf/gattlib/http/afinal/annotation/view/Select;
            selected = ""
        .end subannotation
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract click()Ljava/lang/String;
.end method

.method public abstract id()I
.end method

.method public abstract itemClick()Ljava/lang/String;
.end method

.method public abstract itemLongClick()Ljava/lang/String;
.end method

.method public abstract longClick()Ljava/lang/String;
.end method

.method public abstract select()Lcom/yf/gattlib/http/afinal/annotation/view/Select;
.end method
