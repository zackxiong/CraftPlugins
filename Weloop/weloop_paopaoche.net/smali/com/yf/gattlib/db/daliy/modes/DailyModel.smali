.class public Lcom/yf/gattlib/db/daliy/modes/DailyModel;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/gattlib/db/daliy/modes/DailyModel;->a:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DailyModel;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DailyModel;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/DailyModel;->d:Ljava/lang/String;

    return-void
.end method
