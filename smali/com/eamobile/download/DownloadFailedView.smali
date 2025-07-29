.class public Lcom/eamobile/download/DownloadFailedView;
.super Lcom/eamobile/download/CustomView;
.source "DownloadFailedView.java"


# instance fields
.field dialog:Landroid/app/Dialog;

.field lskBtn:Landroid/widget/Button;

.field mainLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/eamobile/download/CustomView;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Lcom/eamobile/download/DownloadFailedView;->context:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private createContent(Landroid/view/View;)V
    .locals 11
    .param p1, "viewParent"    # Landroid/view/View;

    .prologue
    const/16 v10, 0xa

    const/4 v9, -0x1

    const/4 v8, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 46
    new-instance v4, Landroid/app/Dialog;

    iget-object v5, p0, Lcom/eamobile/download/DownloadFailedView;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->dialog:Landroid/app/Dialog;

    .line 47
    iget-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->dialog:Landroid/app/Dialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 48
    iget-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 50
    iget-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->dialog:Landroid/app/Dialog;

    const/16 v5, 0xb

    invoke-static {v5}, Lcom/eamobile/download/Language;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/eamobile/download/DownloadFailedView;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->mainLayout:Landroid/widget/LinearLayout;

    .line 53
    iget-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->mainLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v9, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->mainLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    iget-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->mainLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 59
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 60
    .local v1, "middleLayout":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 65
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 66
    .local v2, "scrollView":Landroid/widget/ScrollView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setForegroundGravity(I)V

    .line 70
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setClickable(Z)V

    .line 72
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 73
    invoke-virtual {v3, v10, v10, v10, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 74
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 75
    const/16 v4, 0xc

    invoke-static {v4}, Lcom/eamobile/download/Language;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 79
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "layoutSoftkey":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    const/4 v4, 0x5

    const/4 v5, 0x5

    const/4 v6, 0x5

    invoke-virtual {v0, v4, v7, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 83
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 84
    const/16 v4, 0x50

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 86
    iget-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->context:Landroid/content/Context;

    const/16 v5, 0xe

    invoke-static {v5}, Lcom/eamobile/download/Language;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/eamobile/download/DownloadFailedView;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->lskBtn:Landroid/widget/Button;

    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    iget-object v4, p0, Lcom/eamobile/download/DownloadFailedView;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method private showContent(Landroid/view/View;)V
    .locals 2
    .param p1, "viewParent"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/eamobile/download/DownloadFailedView;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/eamobile/download/DownloadFailedView$1;

    invoke-direct {v1, p0}, Lcom/eamobile/download/DownloadFailedView$1;-><init>(Lcom/eamobile/download/DownloadFailedView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 102
    iget-object v0, p0, Lcom/eamobile/download/DownloadFailedView;->lskBtn:Landroid/widget/Button;

    new-instance v1, Lcom/eamobile/download/DownloadFailedView$2;

    invoke-direct {v1, p0}, Lcom/eamobile/download/DownloadFailedView$2;-><init>(Lcom/eamobile/download/DownloadFailedView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/eamobile/download/DownloadFailedView;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/eamobile/download/DownloadFailedView;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/eamobile/download/DownloadFailedView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 113
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/eamobile/download/CustomView;->clean()V

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/eamobile/download/DownloadFailedView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0}, Lcom/eamobile/download/CustomView;->init()V

    .line 27
    invoke-direct {p0, p0}, Lcom/eamobile/download/DownloadFailedView;->createContent(Landroid/view/View;)V

    .line 28
    invoke-direct {p0, p0}, Lcom/eamobile/download/DownloadFailedView;->showContent(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p0}, Lcom/eamobile/download/DownloadFailedView;->showContent(Landroid/view/View;)V

    .line 42
    return-void
.end method
