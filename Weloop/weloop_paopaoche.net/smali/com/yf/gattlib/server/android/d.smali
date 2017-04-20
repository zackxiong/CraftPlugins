.class public final Lcom/yf/gattlib/server/android/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZZZ)Lcom/yf/gattlib/server/android/d;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/yf/gattlib/server/android/d;->a:Ljava/lang/String;

    .line 14
    iput-boolean p2, p0, Lcom/yf/gattlib/server/android/d;->b:Z

    .line 15
    iput-boolean p3, p0, Lcom/yf/gattlib/server/android/d;->c:Z

    .line 16
    iput-boolean p4, p0, Lcom/yf/gattlib/server/android/d;->d:Z

    .line 17
    return-object p0
.end method
