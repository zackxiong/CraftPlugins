.class public Lcom/yf/smart/weloopx/event/CustomStatisticsEvent;
.super Lcom/yf/lib/b/a;
.source "ProGuard"


# instance fields
.field public final code:I

.field public final msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yf/lib/b/a;-><init>()V

    .line 13
    iput p1, p0, Lcom/yf/smart/weloopx/event/CustomStatisticsEvent;->code:I

    .line 14
    iput-object p2, p0, Lcom/yf/smart/weloopx/event/CustomStatisticsEvent;->msg:Ljava/lang/String;

    .line 15
    return-void
.end method
