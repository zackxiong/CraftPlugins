.class public Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;
.super Lcom/yf/smart/weloopx/android/ui/activities/h;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/yf/smart/weloopx/android/ui/activities/h$a;


# instance fields
.field private final A:I

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

.field private J:Landroid/app/AlertDialog;

.field a:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017e
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field c:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d009a
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field e:Landroid/widget/TimePicker;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0090
    .end annotation
.end field

.field f:Landroid/widget/CheckBox;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0093
    .end annotation
.end field

.field g:Landroid/widget/CheckBox;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0094
    .end annotation
.end field

.field h:Landroid/widget/CheckBox;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0095
    .end annotation
.end field

.field i:Landroid/widget/CheckBox;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0096
    .end annotation
.end field

.field s:Landroid/widget/CheckBox;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0097
    .end annotation
.end field

.field t:Landroid/widget/CheckBox;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0098
    .end annotation
.end field

.field u:Landroid/widget/CheckBox;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0099
    .end annotation
.end field

.field private final w:Ljava/lang/String;

.field private x:I

.field private y:I

.field private final z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/h;-><init>()V

    .line 39
    const-string v0, "AlarmEditActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->w:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->x:I

    .line 69
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->y:I

    .line 71
    const/16 v0, 0x271c

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->z:I

    .line 72
    const/16 v0, 0x271d

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->A:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->B:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->C:I

    .line 77
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->D:Z

    .line 78
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->E:Z

    .line 79
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->F:Z

    .line 80
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->G:Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->x:I

    return p1
.end method

.method private a(II)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 402
    if-ge p1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 403
    :goto_0
    if-ge p2, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 402
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 403
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v0, 0x7

    if-gt v1, v0, :cond_1

    .line 357
    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;)Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->G:Z

    return v0
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->E:Z

    return p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;I)I
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->y:I

    return p1
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->J:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 316
    invoke-static {}, Lcom/yf/gattlib/client/d;->a()Lcom/yf/gattlib/client/d;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->p:[B

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/yf/gattlib/http/afinal/core/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 323
    packed-switch p1, :pswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 325
    :pswitch_0
    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/d;->b([B)V

    goto :goto_0

    .line 329
    :pswitch_1
    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/d;->c([B)V

    goto :goto_0

    .line 333
    :pswitch_2
    invoke-virtual {v0, v1}, Lcom/yf/gattlib/client/d;->d([B)V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private d()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "INDEX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->C:I

    .line 113
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ALARM_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->B:Ljava/lang/String;

    .line 115
    :cond_0
    new-instance v0, Lcom/yf/smart/weloopx/data/a;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/data/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->r:Lcom/yf/smart/weloopx/data/a;

    .line 116
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->r:Lcom/yf/smart/weloopx/data/a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/a;->a(Ljava/lang/String;)Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->I:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    .line 118
    return-void
.end method

.method private d(I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 418
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->J:Landroid/app/AlertDialog;

    .line 419
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->J:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 420
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->J:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 421
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    const v0, 0x7f030041

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(I)V

    .line 424
    const v0, 0x7f0d017c

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 425
    new-instance v2, Lcom/yf/smart/weloopx/android/ui/activities/p;

    invoke-direct {v2, p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/p;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    const v0, 0x7f0d017a

    invoke-virtual {v1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 436
    const v2, 0x7f0d017b

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 437
    new-instance v3, Lcom/yf/smart/weloopx/android/ui/activities/q;

    invoke-direct {v3, p0}, Lcom/yf/smart/weloopx/android/ui/activities/q;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    const v3, 0x7f0d0177

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 444
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 445
    packed-switch p1, :pswitch_data_0

    .line 456
    :goto_0
    return-void

    .line 447
    :pswitch_0
    const v0, 0x7f0700f6

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 450
    :pswitch_1
    const v3, 0x7f07008b

    invoke-virtual {p0, v3}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 452
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 445
    :pswitch_data_0
    .packed-switch 0x271c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private e()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->I:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a()Ljava/lang/String;

    move-result-object v1

    .line 123
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x7

    if-gt v0, v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f07020d

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->b:Landroid/widget/Button;

    const v1, 0x7f07007e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 133
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->a:Landroid/widget/Button;

    const v1, 0x7f0701f3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 134
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->c:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->e:Landroid/widget/TimePicker;

    invoke-virtual {v0, v2}, Landroid/widget/TimePicker;->setSaveFromParentEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->e:Landroid/widget/TimePicker;

    invoke-virtual {v0, v3}, Landroid/widget/TimePicker;->setSaveEnabled(Z)V

    .line 142
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->e:Landroid/widget/TimePicker;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setDescendantFocusability(I)V

    .line 144
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->I:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->x:I

    .line 145
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->I:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->y:I

    .line 147
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->e:Landroid/widget/TimePicker;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 148
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->e:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 149
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->e:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 150
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->e:Landroid/widget/TimePicker;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/k;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/k;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 163
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->f:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->g:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 165
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->h:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 166
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->i:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 167
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->s:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 168
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->t:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 169
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->u:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->f:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 173
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 174
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->s:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->t:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->u:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    const v0, 0x7f07023f

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->d(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 200
    iput-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->G:Z

    .line 204
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->F:Z

    .line 205
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    iput-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->F:Z

    .line 211
    :cond_1
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->F:Z

    if-nez v0, :cond_3

    .line 212
    const/16 v0, 0x271d

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->d(I)V

    .line 213
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->G:Z

    .line 243
    :cond_2
    :goto_0
    return-void

    .line 216
    :cond_3
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->D:Z

    if-nez v0, :cond_2

    .line 219
    iput-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->D:Z

    .line 220
    new-instance v3, Lcom/yf/smart/weloopx/data/models/AlarmHolder;

    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->x:I

    iget v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->y:I

    invoke-direct {v3, v0, v4, v1}, Lcom/yf/smart/weloopx/data/models/AlarmHolder;-><init>(IIZ)V

    .line 221
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->C:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 235
    :goto_1
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->p:[B

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    iget v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->C:I

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->a(Lcom/yf/smart/weloopx/data/models/AlarmHolder;[BLjava/util/List;I)V

    .line 239
    :try_start_0
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->C:I

    invoke-virtual {p0, p0, v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->a(Lcom/yf/smart/weloopx/android/ui/activities/h$a;II)V
    :try_end_0
    .catch Lcom/yf/gattlib/e/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Lcom/yf/gattlib/e/a;->printStackTrace()V

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 225
    goto :goto_1

    :pswitch_1
    move v0, v2

    .line 229
    goto :goto_1

    .line 231
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_1

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private j()V
    .locals 2

    .prologue
    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 251
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->C:I

    invoke-virtual {p0, v1, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 252
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->finish()V

    .line 253
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->E:Z

    if-eqz v0, :cond_0

    .line 409
    const/16 v0, 0x271c

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->d(I)V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 257
    const-string v0, "AlarmEditActivity onSyncAlarmStart"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/l;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/l;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 265
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 282
    iput-boolean v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->G:Z

    .line 283
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/n;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/n;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 292
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->I:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    iget-object v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->c(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->I:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    const v2, 0x7f070039

    invoke-virtual {p0, v2}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->b(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->I:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->x:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->e(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->I:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->y:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->f(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->I:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->x:I

    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->y:I

    invoke-direct {p0, v2, v3}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->d(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->I:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->g(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->I:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v1, v0}, Lcom/yf/gattlib/db/daliy/modes/AlarmModel;->a(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->r:Lcom/yf/smart/weloopx/data/a;

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->I:Lcom/yf/gattlib/db/daliy/modes/AlarmModel;

    invoke-virtual {v0, v1}, Lcom/yf/smart/weloopx/data/a;->d(Lcom/yf/gattlib/db/daliy/modes/AlarmModel;)V

    .line 302
    invoke-direct {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->c(I)V

    .line 304
    iput-boolean v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->D:Z

    .line 310
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->j()V

    .line 312
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->G:Z

    .line 270
    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->D:Z

    .line 271
    const-string v0, "AlarmEditActivity onSyncAlarmFailed"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 272
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/m;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/m;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->D:Z

    .line 345
    const-string v0, "AlarmEditActivity onSyncAlarmTimeout"

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 346
    new-instance v0, Lcom/yf/smart/weloopx/android/ui/activities/o;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/android/ui/activities/o;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;)V

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 367
    iput-boolean v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->E:Z

    .line 369
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 399
    :goto_0
    return-void

    .line 371
    :pswitch_0
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 375
    :pswitch_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 379
    :pswitch_2
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 383
    :pswitch_3
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 387
    :pswitch_4
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    const/4 v1, 0x4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 391
    :pswitch_5
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    const/4 v1, 0x5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 395
    :pswitch_6
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->H:Ljava/util/List;

    const/4 v1, 0x6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0093
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 187
    :sswitch_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->k()V

    goto :goto_0

    .line 192
    :sswitch_1
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->i()V

    goto :goto_0

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x7f0d009a -> :sswitch_1
        0x7f0d017d -> :sswitch_0
        0x7f0d017e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/yf/smart/weloopx/android/ui/activities/h;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->requestWindowFeature(I)Z

    .line 90
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->setContentView(I)V

    .line 91
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 93
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->d()V

    .line 94
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->e()V

    .line 95
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->h()V

    .line 96
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/AlarmEditActivity;->k()V

    .line 103
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
