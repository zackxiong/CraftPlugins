.class public Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;
.super Landroid/app/Activity;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0294
    .end annotation
.end field

.field b:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017d
    .end annotation
.end field

.field c:Landroid/widget/Button;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d017e
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d016e
    .end annotation
.end field

.field e:Landroid/widget/DatePicker;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0292
    .end annotation
.end field

.field f:Landroid/widget/TimePicker;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0293
    .end annotation
.end field

.field g:Landroid/widget/EditText;
    .annotation runtime Lcom/b/a/g/a/d;
        a = 0x7f0d0291
    .end annotation
.end field

.field private final h:Ljava/lang/String;

.field private i:Lcom/yf/smart/weloopx/data/i;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string v0, "RemindersAddActivity"

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->h:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->j:I

    .line 51
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->k:I

    .line 52
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->l:I

    .line 53
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->m:I

    .line 54
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->n:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->o:Ljava/lang/String;

    .line 56
    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->p:I

    .line 57
    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->q:Z

    return-void
.end method

.method static synthetic a(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->j:I

    return p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lcom/yf/smart/weloopx/data/i;

    invoke-direct {v0, p0}, Lcom/yf/smart/weloopx/data/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->i:Lcom/yf/smart/weloopx/data/i;

    .line 84
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->o:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->o:Ljava/lang/String;

    const-string v2, "edit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->q:Z

    .line 88
    new-instance v1, Lcom/yf/smart/weloopx/data/models/RemindersModel;

    invoke-direct {v1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;-><init>()V

    .line 89
    const-string v2, "id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->p:I

    .line 90
    const-string v2, "year"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setYear(Ljava/lang/String;)V

    .line 91
    const-string v2, "month"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setMonth(Ljava/lang/String;)V

    .line 92
    const-string v2, "day"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setDay(Ljava/lang/String;)V

    .line 93
    const-string v2, "hour"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setHour(Ljava/lang/String;)V

    .line 94
    const-string v2, "min"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setMin(Ljava/lang/String;)V

    .line 95
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setMsg(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->a(Lcom/yf/smart/weloopx/data/models/RemindersModel;)V

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->q:Z

    .line 99
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->c()V

    goto :goto_0
.end method

.method private a(Lcom/yf/smart/weloopx/data/models/RemindersModel;)V
    .locals 5

    .prologue
    .line 156
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->g:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 158
    instance-of v0, v1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 159
    check-cast v0, Landroid/text/Spannable;

    .line 160
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getYear()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->j:I

    .line 164
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMonth()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->k:I

    .line 165
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getDay()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->l:I

    .line 166
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getHour()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->m:I

    .line 167
    invoke-virtual {p1}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->getMin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->n:I

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemindersAddActivity \u521d\u59cb\u5316\u8981\u7f16\u8f91\u7684month = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->e:Landroid/widget/DatePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 171
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->e:Landroid/widget/DatePicker;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->j:I

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->k:I

    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->l:I

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/activities/fv;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fv;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 187
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->f:Landroid/widget/TimePicker;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 188
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->f:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 189
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->f:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 190
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->f:Landroid/widget/TimePicker;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/fw;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fw;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 198
    return-void
.end method

.method static synthetic b(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->k:I

    return p1
.end method

.method private b()V
    .locals 4

    .prologue
    const/high16 v3, 0x60000

    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->e:Landroid/widget/DatePicker;

    invoke-virtual {v0, v3}, Landroid/widget/DatePicker;->setDescendantFocusability(I)V

    .line 105
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->f:Landroid/widget/TimePicker;

    invoke-virtual {v0, v2}, Landroid/widget/TimePicker;->setSaveFromParentEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->f:Landroid/widget/TimePicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setSaveEnabled(Z)V

    .line 107
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->f:Landroid/widget/TimePicker;

    invoke-virtual {v0, v3}, Landroid/widget/TimePicker;->setDescendantFocusability(I)V

    .line 108
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->c:Landroid/widget/Button;

    const v1, 0x7f0701f3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 115
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f070210

    invoke-virtual {p0, v1}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method static synthetic c(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->l:I

    return p1
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->j:I

    .line 122
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->k:I

    .line 123
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->l:I

    .line 124
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->m:I

    .line 125
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->n:I

    .line 127
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->e:Landroid/widget/DatePicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 128
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->e:Landroid/widget/DatePicker;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->j:I

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->k:I

    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->l:I

    new-instance v4, Lcom/yf/smart/weloopx/android/ui/activities/ft;

    invoke-direct {v4, p0}, Lcom/yf/smart/weloopx/android/ui/activities/ft;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 141
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->f:Landroid/widget/TimePicker;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 142
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->f:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 143
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->f:Landroid/widget/TimePicker;

    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 144
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->f:Landroid/widget/TimePicker;

    new-instance v1, Lcom/yf/smart/weloopx/android/ui/activities/fu;

    invoke-direct {v1, p0}, Lcom/yf/smart/weloopx/android/ui/activities/fu;-><init>(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 153
    return-void
.end method

.method static synthetic d(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->m:I

    return p1
.end method

.method private d()V
    .locals 11

    .prologue
    const/16 v5, 0xa

    .line 216
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->i:Lcom/yf/smart/weloopx/data/i;

    invoke-virtual {v0}, Lcom/yf/smart/weloopx/data/i;->b()I

    move-result v0

    if-lt v0, v5, :cond_1

    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->q:Z

    if-nez v0, :cond_1

    .line 217
    const v0, 0x7f0701e4

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->a(I)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_2
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->m:I

    if-ge v1, v5, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    :goto_1
    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->n:I

    if-ge v2, v5, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->k:I

    if-ge v3, v5, :cond_5

    const-string v3, "0"

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->k:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->j:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->l:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "00"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 228
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 230
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 231
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 232
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RemindersAddActivity nowTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tempTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 234
    :try_start_0
    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 235
    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemindersAddActivity newCale = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " editCale = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_4
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v3

    if-lez v3, :cond_6

    .line 243
    const v0, 0x7f0701e2

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->a(I)V

    goto/16 :goto_0

    .line 223
    :cond_3
    iget v1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->m:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 224
    :cond_4
    iget v2, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->n:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 225
    :cond_5
    const-string v3, ""

    goto/16 :goto_3

    .line 238
    :catch_0
    move-exception v3

    .line 239
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_4

    .line 246
    :cond_6
    iget-object v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->i:Lcom/yf/smart/weloopx/data/i;

    invoke-virtual {v3, v0, v5}, Lcom/yf/smart/weloopx/data/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->q:Z

    if-nez v3, :cond_7

    .line 247
    const v0, 0x7f0701e3

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->a(I)V

    goto/16 :goto_0

    .line 251
    :cond_7
    new-instance v3, Lcom/yf/smart/weloopx/data/models/RemindersModel;

    invoke-direct {v3}, Lcom/yf/smart/weloopx/data/models/RemindersModel;-><init>()V

    .line 252
    iget v6, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->m:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setHour(Ljava/lang/String;)V

    .line 253
    iget v6, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->n:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setMin(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v3, v0}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setMsg(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v3, v5}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setDateAndTime(Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setTime(Ljava/lang/String;)V

    .line 257
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setYear(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v3, v4}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setMonth(Ljava/lang/String;)V

    .line 259
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->l:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setDay(Ljava/lang/String;)V

    .line 262
    iget-boolean v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->q:Z

    if-eqz v0, :cond_8

    .line 263
    iget v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->p:I

    invoke-virtual {v3, v0}, Lcom/yf/smart/weloopx/data/models/RemindersModel;->setId(I)V

    .line 264
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->i:Lcom/yf/smart/weloopx/data/i;

    invoke-virtual {v0, v3}, Lcom/yf/smart/weloopx/data/i;->b(Lcom/yf/smart/weloopx/data/models/RemindersModel;)Z

    move-result v0

    .line 268
    :goto_5
    if-eqz v0, :cond_0

    .line 269
    const v0, 0x7f070211

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->a(I)V

    .line 270
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->finish()V

    goto/16 :goto_0

    .line 266
    :cond_8
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->i:Lcom/yf/smart/weloopx/data/i;

    invoke-virtual {v0, v3}, Lcom/yf/smart/weloopx/data/i;->a(Lcom/yf/smart/weloopx/data/models/RemindersModel;)Z

    move-result v0

    goto :goto_5
.end method

.method static synthetic e(Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;I)I
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->n:I

    return p1
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 277
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 212
    :goto_0
    return-void

    .line 206
    :sswitch_0
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->d()V

    goto :goto_0

    .line 209
    :sswitch_1
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->finish()V

    goto :goto_0

    .line 203
    :sswitch_data_0
    .sparse-switch
        0x7f0d017d -> :sswitch_1
        0x7f0d017e -> :sswitch_0
        0x7f0d0294 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->requestWindowFeature(I)Z

    .line 64
    const v0, 0x7f030096

    invoke-virtual {p0, v0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Lcom/b/a/e;->a(Landroid/app/Activity;)V

    .line 67
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->a()V

    .line 68
    invoke-direct {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->b()V

    .line 71
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/yf/smart/weloopx/android/ui/activities/RemindersAddActivity;->finish()V

    .line 78
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
