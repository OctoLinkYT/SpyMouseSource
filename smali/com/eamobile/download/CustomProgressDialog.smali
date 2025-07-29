.class public Lcom/eamobile/download/CustomProgressDialog;
.super Lcom/eamobile/download/CustomView;
.source "CustomProgressDialog.java"

# interfaces
.implements Lcom/eamobile/download/IProgressDialog;


# instance fields
.field private customProgressBar:Lcom/eamobile/download/CustomProgressBar;

.field private dialog:Landroid/app/Dialog;

.field private mainLayout:Landroid/widget/LinearLayout;

.field private max:I

.field private progress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/eamobile/download/CustomView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/eamobile/download/CustomProgressDialog;->context:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/eamobile/download/CustomProgressDialog;->dialog:Landroid/app/Dialog;

    .line 28
    iput-object v0, p0, Lcom/eamobile/download/CustomProgressDialog;->customProgressBar:Lcom/eamobile/download/CustomProgressBar;

    .line 29
    iput-object v0, p0, Lcom/eamobile/download/CustomProgressDialog;->mainLayout:Landroid/widget/LinearLayout;

    .line 30
    iput v1, p0, Lcom/eamobile/download/CustomProgressDialog;->progress:I

    .line 31
    iput v1, p0, Lcom/eamobile/download/CustomProgressDialog;->max:I

    .line 32
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/eamobile/download/CustomProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 81
    return-void
.end method

.method public initDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v7, -0x1

    .line 37
    new-instance v3, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/eamobile/download/CustomProgressDialog;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->dialog:Landroid/app/Dialog;

    .line 38
    iget-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 39
    iget-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 41
    iget-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->dialog:Landroid/app/Dialog;

    const/16 v4, 0x14

    invoke-static {v4}, Lcom/eamobile/download/Language;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/eamobile/download/CustomProgressDialog;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->mainLayout:Landroid/widget/LinearLayout;

    .line 44
    iget-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->mainLayout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    iget-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 47
    iget-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->mainLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 49
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "middleLayout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 55
    new-instance v1, Landroid/widget/ScrollView;

    iget-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 56
    .local v1, "scrollView":Landroid/widget/ScrollView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setForegroundGravity(I)V

    .line 60
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setId(I)V

    .line 62
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setClickable(Z)V

    .line 63
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 64
    const/16 v3, 0x13

    const/4 v4, 0x2

    const/16 v5, 0xa

    const/16 v6, 0x12

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 65
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 66
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    const-string v3, "..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 70
    new-instance v3, Lcom/eamobile/download/CustomProgressBar;

    iget-object v4, p0, Lcom/eamobile/download/CustomProgressDialog;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/eamobile/download/CustomProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->customProgressBar:Lcom/eamobile/download/CustomProgressBar;

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    iget-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->mainLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/eamobile/download/CustomProgressDialog;->customProgressBar:Lcom/eamobile/download/CustomProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 74
    iget-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method public isDialogValid()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/eamobile/download/CustomProgressDialog;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDownloadMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/eamobile/download/CustomProgressDialog;->max:I

    .line 131
    return-void
.end method

.method public setDownloadProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/eamobile/download/CustomProgressDialog;->progress:I

    .line 125
    return-void
.end method

.method public showDialogContent()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/eamobile/download/CustomProgressDialog;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/eamobile/download/CustomProgressDialog;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 93
    iget-object v0, p0, Lcom/eamobile/download/CustomProgressDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 95
    iget-object v0, p0, Lcom/eamobile/download/CustomProgressDialog;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/eamobile/download/CustomProgressDialog$1;

    invoke-direct {v1, p0}, Lcom/eamobile/download/CustomProgressDialog$1;-><init>(Lcom/eamobile/download/CustomProgressDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 104
    return-void
.end method

.method public updateDialog()V
    .locals 5

    .prologue
    .line 109
    iget v3, p0, Lcom/eamobile/download/CustomProgressDialog;->max:I

    if-lez v3, :cond_0

    .line 111
    iget v3, p0, Lcom/eamobile/download/CustomProgressDialog;->progress:I

    int-to-float v3, v3

    iget v4, p0, Lcom/eamobile/download/CustomProgressDialog;->max:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 112
    .local v0, "fProgress":F
    iget-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->customProgressBar:Lcom/eamobile/download/CustomProgressBar;

    invoke-virtual {v3, v0}, Lcom/eamobile/download/CustomProgressBar;->setProgress(F)V

    .line 113
    iget-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->customProgressBar:Lcom/eamobile/download/CustomProgressBar;

    invoke-virtual {v3}, Lcom/eamobile/download/CustomProgressBar;->invalidate()V

    .line 115
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 116
    .local v2, "tempProgress":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/eamobile/download/CustomProgressDialog;->progress:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MB of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/eamobile/download/CustomProgressDialog;->max:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "info":Ljava/lang/String;
    iget-object v3, p0, Lcom/eamobile/download/CustomProgressDialog;->dialog:Landroid/app/Dialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "fProgress":F
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .end local v1    # "info":Ljava/lang/String;
    .end local v2    # "tempProgress":I
    :cond_0
    return-void
.end method
