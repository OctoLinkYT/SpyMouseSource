.class public Lcom/eamobile/download/DownloadMsgView;
.super Lcom/eamobile/download/CustomView;
.source "DownloadMsgView.java"


# instance fields
.field dialog:Landroid/app/Dialog;

.field lskBtn:Landroid/widget/Button;

.field mainLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/eamobile/download/CustomView;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/eamobile/download/DownloadMsgView;->context:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private createContent(Landroid/view/View;)V
    .locals 13
    .param p1, "viewParent"    # Landroid/view/View;

    .prologue
    const/4 v12, -0x1

    const/4 v11, -0x2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 52
    new-instance v4, Landroid/app/Dialog;

    iget-object v5, p0, Lcom/eamobile/download/DownloadMsgView;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->dialog:Landroid/app/Dialog;

    .line 53
    iget-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v4, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 54
    iget-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 56
    iget-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->dialog:Landroid/app/Dialog;

    invoke-static {v8}, Lcom/eamobile/download/Language;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/eamobile/download/DownloadMsgView;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->mainLayout:Landroid/widget/LinearLayout;

    .line 59
    iget-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->mainLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v12, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 62
    iget-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->mainLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 65
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->context:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    .local v1, "middleLayout":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 71
    new-instance v2, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v2, "scrollView":Landroid/widget/ScrollView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/ScrollView;->setForegroundGravity(I)V

    .line 76
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 77
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setClickable(Z)V

    .line 78
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 79
    const/16 v4, 0xa

    const/16 v5, 0xa

    const/16 v6, 0xa

    const/16 v7, 0xa

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 80
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eamobile/download/DownloadActivityInternal;->getApplicationName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/eamobile/download/DownloadActivityInternal;->getRequiredSpaceForDownload()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v9, v4}, Lcom/eamobile/download/Language;->getString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 85
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "layoutSoftkey":Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v12, v11, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    const/4 v4, 0x5

    const/4 v5, 0x5

    const/4 v6, 0x5

    invoke-virtual {v0, v4, v8, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 89
    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 90
    const/16 v4, 0x50

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 92
    iget-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->context:Landroid/content/Context;

    const/4 v5, 0x5

    invoke-static {v5}, Lcom/eamobile/download/Language;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/eamobile/download/DownloadMsgView;->addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->lskBtn:Landroid/widget/Button;

    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    iget-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    iget-object v4, p0, Lcom/eamobile/download/DownloadMsgView;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method private showContent(Landroid/view/View;)V
    .locals 2
    .param p1, "viewParent"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/eamobile/download/DownloadMsgView;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/eamobile/download/DownloadMsgView$1;

    invoke-direct {v1, p0}, Lcom/eamobile/download/DownloadMsgView$1;-><init>(Lcom/eamobile/download/DownloadMsgView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 109
    iget-object v0, p0, Lcom/eamobile/download/DownloadMsgView;->lskBtn:Landroid/widget/Button;

    new-instance v1, Lcom/eamobile/download/DownloadMsgView$2;

    invoke-direct {v1, p0}, Lcom/eamobile/download/DownloadMsgView$2;-><init>(Lcom/eamobile/download/DownloadMsgView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/eamobile/download/DownloadMsgView;->dialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/eamobile/download/DownloadMsgView;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/eamobile/download/DownloadMsgView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 135
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/eamobile/download/CustomView;->clean()V

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/eamobile/download/DownloadMsgView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/eamobile/download/CustomView;->init()V

    .line 30
    invoke-direct {p0, p0}, Lcom/eamobile/download/DownloadMsgView;->createContent(Landroid/view/View;)V

    .line 31
    invoke-direct {p0, p0}, Lcom/eamobile/download/DownloadMsgView;->showContent(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/eamobile/download/DownloadMsgView;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, p0}, Lcom/eamobile/download/DownloadMsgView;->showContent(Landroid/view/View;)V

    .line 48
    :cond_0
    return-void
.end method
