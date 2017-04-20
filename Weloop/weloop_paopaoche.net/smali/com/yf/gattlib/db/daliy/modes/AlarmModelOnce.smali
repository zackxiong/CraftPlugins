.class public Lcom/yf/gattlib/db/daliy/modes/AlarmModelOnce;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/yf/gattlib/db/daliy/modes/AlarmModelOnce;->a:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/AlarmModelOnce;->b:Ljava/lang/String;

    .line 18
    iput v1, p0, Lcom/yf/gattlib/db/daliy/modes/AlarmModelOnce;->c:I

    .line 19
    iput v1, p0, Lcom/yf/gattlib/db/daliy/modes/AlarmModelOnce;->d:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/gattlib/db/daliy/modes/AlarmModelOnce;->e:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yf/gattlib/db/daliy/modes/AlarmModelOnce;->f:Z

    return-void
.end method
