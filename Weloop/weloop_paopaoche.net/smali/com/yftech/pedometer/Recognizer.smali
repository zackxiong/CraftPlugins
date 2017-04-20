.class public Lcom/yftech/pedometer/Recognizer;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/pedometer/Recognizer$Reporter;
    }
.end annotation


# static fields
.field public static final CHANGE_COUNT:I = 0x1

.field public static final CHANGE_MODE:I = 0x2

.field public static final CHANGE_PERIOD:I = 0x3

.field public static final MODE_CAR:I = 0x3

.field public static final MODE_INVALID:I = 0x9

.field public static final MODE_OTHER:I = 0x8

.field public static final MODE_RUN:I = 0x2

.field public static final MODE_STEP:I = 0x1

.field public static final MODE_UNKNOWN:I


# instance fields
.field private mMode:I

.field private mPeriod:I

.field private mReporter:Lcom/yftech/pedometer/Recognizer$Reporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "jni_recognizer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/yftech/pedometer/Recognizer$Reporter;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/yftech/pedometer/Recognizer;->mMode:I

    .line 20
    iput-object p1, p0, Lcom/yftech/pedometer/Recognizer;->mReporter:Lcom/yftech/pedometer/Recognizer$Reporter;

    .line 21
    return-void
.end method

.method private onRecongnizerChanged(II)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 35
    iput p2, p0, Lcom/yftech/pedometer/Recognizer;->mMode:I

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yftech/pedometer/Recognizer;->mReporter:Lcom/yftech/pedometer/Recognizer$Reporter;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/yftech/pedometer/Recognizer;->mReporter:Lcom/yftech/pedometer/Recognizer$Reporter;

    invoke-interface {v0, p1, p2}, Lcom/yftech/pedometer/Recognizer$Reporter;->onRecongnizerChanged(II)V

    .line 42
    :cond_1
    return-void

    .line 36
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 37
    iput p2, p0, Lcom/yftech/pedometer/Recognizer;->mPeriod:I

    goto :goto_0
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/yftech/pedometer/Recognizer;->mMode:I

    return v0
.end method

.method public getPeriod()I
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/yftech/pedometer/Recognizer;->mMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yftech/pedometer/Recognizer;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/yftech/pedometer/Recognizer;->mPeriod:I

    goto :goto_0
.end method

.method public native onSensorChanged(IJ[F)V
.end method
