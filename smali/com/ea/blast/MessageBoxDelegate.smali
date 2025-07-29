.class public Lcom/ea/blast/MessageBoxDelegate;
.super Ljava/lang/Object;
.source "MessageBoxDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mButton1:Ljava/lang/String;

.field private mButton2:Ljava/lang/String;

.field private mButton3:Ljava/lang/String;

.field private mButtonCount:I

.field private mClickedIndex:I

.field private mCurrentThread:Ljava/lang/String;

.field private mRunnable:Ljava/lang/Runnable;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ea/blast/MessageBoxDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/ea/blast/MessageBoxDelegate;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/ea/blast/MessageBoxDelegate;->createMessage()V

    return-void
.end method

.method private createMessage()V
    .locals 4

    .prologue
    .line 27
    const/4 v2, -0x1

    iput v2, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    .line 29
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 31
    iget-object v2, p0, Lcom/ea/blast/MessageBoxDelegate;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 32
    iget-object v2, p0, Lcom/ea/blast/MessageBoxDelegate;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 34
    iget v2, p0, Lcom/ea/blast/MessageBoxDelegate;->mButtonCount:I

    if-lez v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton1:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 36
    :cond_0
    iget v2, p0, Lcom/ea/blast/MessageBoxDelegate;->mButtonCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 37
    iget-object v2, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton2:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 38
    :cond_1
    iget v2, p0, Lcom/ea/blast/MessageBoxDelegate;->mButtonCount:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    .line 39
    iget-object v2, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton3:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 41
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 43
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ea/blast/MessageBoxDelegate;->mCurrentThread:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    const/4 v2, -0x2

    iput v2, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    .line 49
    :cond_3
    return-void
.end method


# virtual methods
.method public JavaMessageBox(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "caption"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "buttonCount"    # I
    .param p5, "button1"    # Ljava/lang/String;
    .param p6, "button2"    # Ljava/lang/String;
    .param p7, "button3"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mCurrentThread:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/ea/blast/MessageBoxDelegate;->mTitle:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/ea/blast/MessageBoxDelegate;->mText:Ljava/lang/String;

    .line 56
    iput p3, p0, Lcom/ea/blast/MessageBoxDelegate;->mType:I

    .line 57
    iput-object p5, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton1:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton2:Ljava/lang/String;

    .line 59
    iput-object p7, p0, Lcom/ea/blast/MessageBoxDelegate;->mButton3:Ljava/lang/String;

    .line 60
    iput p4, p0, Lcom/ea/blast/MessageBoxDelegate;->mButtonCount:I

    .line 61
    iput v3, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    .line 63
    new-instance v1, Lcom/ea/blast/MessageBoxDelegate$1;

    invoke-direct {v1, p0}, Lcom/ea/blast/MessageBoxDelegate$1;-><init>(Lcom/ea/blast/MessageBoxDelegate;)V

    iput-object v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mRunnable:Ljava/lang/Runnable;

    .line 71
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iget-object v2, p0, Lcom/ea/blast/MessageBoxDelegate;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/ea/blast/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 72
    :goto_0
    iget v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    if-ne v1, v3, :cond_0

    .line 76
    :try_start_0
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    sget-boolean v1, Lcom/ea/blast/MainActivity;->activitySuspended:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    iget v1, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    return v1

    .line 80
    :cond_1
    const-wide/16 v1, 0x19

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 92
    packed-switch p2, :pswitch_data_0

    .line 105
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 106
    return-void

    .line 95
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    goto :goto_0

    .line 98
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    goto :goto_0

    .line 101
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/ea/blast/MessageBoxDelegate;->mClickedIndex:I

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
