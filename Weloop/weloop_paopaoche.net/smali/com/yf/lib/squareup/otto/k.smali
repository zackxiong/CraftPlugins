.class public interface abstract Lcom/yf/lib/squareup/otto/k;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static final a:Lcom/yf/lib/squareup/otto/k;

.field public static final b:Lcom/yf/lib/squareup/otto/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/yf/lib/squareup/otto/l;

    invoke-direct {v0}, Lcom/yf/lib/squareup/otto/l;-><init>()V

    sput-object v0, Lcom/yf/lib/squareup/otto/k;->a:Lcom/yf/lib/squareup/otto/k;

    .line 44
    new-instance v0, Lcom/yf/lib/squareup/otto/m;

    invoke-direct {v0}, Lcom/yf/lib/squareup/otto/m;-><init>()V

    sput-object v0, Lcom/yf/lib/squareup/otto/k;->b:Lcom/yf/lib/squareup/otto/k;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/yf/lib/squareup/otto/b;)V
.end method
