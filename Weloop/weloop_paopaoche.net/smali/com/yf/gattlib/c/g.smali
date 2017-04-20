.class public final Lcom/yf/gattlib/c/g;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:Ljava/util/UUID;

.field private b:Ljava/util/UUID;

.field private c:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/yf/gattlib/c/g;->a:Ljava/util/UUID;

    .line 11
    iput-object p2, p0, Lcom/yf/gattlib/c/g;->b:Ljava/util/UUID;

    .line 12
    iput-object p3, p0, Lcom/yf/gattlib/c/g;->c:Ljava/util/UUID;

    .line 13
    return-void
.end method


# virtual methods
.method public a()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yf/gattlib/c/g;->a:Ljava/util/UUID;

    return-object v0
.end method

.method public b()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yf/gattlib/c/g;->b:Ljava/util/UUID;

    return-object v0
.end method

.method public c()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yf/gattlib/c/g;->c:Ljava/util/UUID;

    return-object v0
.end method
