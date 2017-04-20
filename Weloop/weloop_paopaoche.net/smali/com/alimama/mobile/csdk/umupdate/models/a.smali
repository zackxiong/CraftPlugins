.class public Lcom/alimama/mobile/csdk/umupdate/models/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public A:Ljava/lang/String;

.field public B:I

.field public C:I

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:I

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Lcom/alimama/mobile/csdk/umupdate/models/j;

.field public L:Lcom/alimama/mobile/csdk/umupdate/models/o;

.field public M:Ljava/lang/String;

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:I

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->B:I

    .line 29
    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->C:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->D:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->E:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->F:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->G:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->H:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->I:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->J:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->O:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->P:I

    .line 123
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->B:I

    .line 29
    iput v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->C:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->D:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->E:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->F:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->G:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->H:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->I:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->J:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->O:Ljava/lang/String;

    .line 62
    iput v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->P:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->z:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->A:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->B:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->C:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->D:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->E:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->F:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->G:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->H:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->I:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->J:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    if-ne v0, v3, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->K:Lcom/alimama/mobile/csdk/umupdate/models/j;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    if-ne v0, v3, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->L:Lcom/alimama/mobile/csdk/umupdate/models/o;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->M:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->N:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->O:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->P:I

    .line 145
    return-void

    .line 138
    :cond_0
    invoke-static {}, Lcom/alimama/mobile/csdk/umupdate/models/j;->values()[Lcom/alimama/mobile/csdk/umupdate/models/j;

    move-result-object v2

    aget-object v0, v2, v0

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {}, Lcom/alimama/mobile/csdk/umupdate/models/o;->values()[Lcom/alimama/mobile/csdk/umupdate/models/o;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 73
    :try_start_0
    const-string v0, "sid"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->I:Ljava/lang/String;

    .line 74
    const-string v0, "psid"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->J:Ljava/lang/String;

    .line 75
    const-string v0, "url_params"

    iget-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->N:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->N:Ljava/lang/String;

    .line 77
    const-string v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/alimama/mobile/csdk/umupdate/models/o;->a(Ljava/lang/String;)Lcom/alimama/mobile/csdk/umupdate/models/o;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->L:Lcom/alimama/mobile/csdk/umupdate/models/o;

    .line 82
    :cond_0
    const-string v0, "resource_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "resource_type"

    sget-object v1, Lcom/alimama/mobile/csdk/umupdate/models/j;->a:Lcom/alimama/mobile/csdk/umupdate/models/j;

    invoke-virtual {v1}, Lcom/alimama/mobile/csdk/umupdate/models/j;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/alimama/mobile/csdk/umupdate/models/j;->a(Ljava/lang/String;)Lcom/alimama/mobile/csdk/umupdate/models/j;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_2

    :goto_0
    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->K:Lcom/alimama/mobile/csdk/umupdate/models/j;

    .line 89
    :cond_1
    const-string v0, "act_pams"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->O:Ljava/lang/String;

    .line 93
    :goto_1
    return-void

    .line 86
    :cond_2
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/models/j;->a:Lcom/alimama/mobile/csdk/umupdate/models/j;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "Parse json error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/alimama/mobile/csdk/umupdate/a/j;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->I:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->K:Lcom/alimama/mobile/csdk/umupdate/models/j;

    .line 67
    iput-object v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->L:Lcom/alimama/mobile/csdk/umupdate/models/o;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->O:Ljava/lang/String;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->N:Ljava/lang/String;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->M:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 103
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->B:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->C:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->E:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->H:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->K:Lcom/alimama/mobile/csdk/umupdate/models/j;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->L:Lcom/alimama/mobile/csdk/umupdate/models/o;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->M:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->N:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->O:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->P:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->K:Lcom/alimama/mobile/csdk/umupdate/models/j;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/j;->ordinal()I

    move-result v0

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/a;->L:Lcom/alimama/mobile/csdk/umupdate/models/o;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/o;->ordinal()I

    move-result v1

    goto :goto_1
.end method
