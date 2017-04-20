.class public Lcom/yf/gattlib/db/WeChatUser;
.super Lcom/roscopeco/ormdroid/Entity;
.source "ProGuard"


# static fields
.field public static final LEVEL_BLACK:I = 0x1

.field public static final LEVEL_UNKNOWN:I = 0x2

.field public static final LEVEL_WHITE:I


# instance fields
.field public id:I

.field public level:I

.field public name:Ljava/lang/String;

.field public selected:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/roscopeco/ormdroid/Entity;-><init>()V

    .line 10
    const/4 v0, 0x2

    iput v0, p0, Lcom/yf/gattlib/db/WeChatUser;->level:I

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/gattlib/db/WeChatUser;->selected:I

    .line 12
    return-void
.end method


# virtual methods
.method public isBlack()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 18
    iget v1, p0, Lcom/yf/gattlib/db/WeChatUser;->level:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/yf/gattlib/db/WeChatUser;->selected:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhite()Z
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/yf/gattlib/db/WeChatUser;->level:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 26
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/yf/gattlib/db/WeChatUser;->selected:I

    .line 27
    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
