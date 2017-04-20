.class public Lorg/a/a/m;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/a/a/m$a;
    }
.end annotation


# static fields
.field static a:Ljava/util/Hashtable;

.field static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/a/a/m;->a:Ljava/util/Hashtable;

    .line 115
    const/4 v0, 0x0

    sput v0, Lorg/a/a/m;->b:I

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Lorg/a/a/m;->b()Ljava/util/Stack;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/m$a;

    iget-object v0, v0, Lorg/a/a/m$a;->a:Ljava/lang/String;

    .line 223
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()Ljava/util/Stack;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lorg/a/a/m;->a:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lorg/a/a/m;->a:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
