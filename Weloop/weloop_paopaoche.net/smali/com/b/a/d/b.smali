.class Lcom/b/a/d/b;
.super Lcom/b/a/b/g;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/b/g",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/d/a;


# direct methods
.method constructor <init>(Lcom/b/a/d/a;I)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/b/a/d/b;->a:Lcom/b/a/d/a;

    invoke-direct {p0, p2}, Lcom/b/a/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 55
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/d/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 58
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method
