.class public final Landroid/widget/YFHtcRemoteViews$ReflectionAction;
.super Landroid/widget/YFHtcRemoteViews$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YFHtcRemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReflectionAction"
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/Object;

.field final synthetic g:Landroid/widget/YFHtcRemoteViews;


# direct methods
.method constructor <init>(Landroid/widget/YFHtcRemoteViews;Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 1103
    iput-object p1, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->g:Landroid/widget/YFHtcRemoteViews;

    invoke-direct {p0}, Landroid/widget/YFHtcRemoteViews$Action;-><init>()V

    .line 1104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->a:I

    .line 1105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->d:Ljava/lang/String;

    .line 1106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->e:I

    .line 1113
    invoke-virtual {p0, p2}, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->a(Landroid/os/Parcel;)V

    .line 1116
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->e:I

    packed-switch v0, :pswitch_data_0

    .line 1168
    :cond_0
    :goto_0
    return-void

    .line 1118
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1121
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1124
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1127
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1130
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1133
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1136
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1139
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1142
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1145
    :pswitch_9
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1148
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1153
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1158
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1161
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1171
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1174
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    invoke-virtual {p0, p1}, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->b(Landroid/os/Parcel;)V

    .line 1184
    iget v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->e:I

    packed-switch v0, :pswitch_data_0

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1186
    :pswitch_0
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 1189
    :pswitch_1
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 1192
    :pswitch_2
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1195
    :pswitch_3
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1198
    :pswitch_4
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 1201
    :pswitch_5
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 1204
    :pswitch_6
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 1207
    :pswitch_7
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1210
    :pswitch_8
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1213
    :pswitch_9
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1216
    :pswitch_a
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 1216
    goto :goto_2

    .line 1222
    :pswitch_b
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 1222
    goto :goto_3

    .line 1228
    :pswitch_c
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1231
    :pswitch_d
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Landroid/widget/YFHtcRemoteViews$ReflectionAction;->f:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 1231
    goto :goto_4

    .line 1184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
