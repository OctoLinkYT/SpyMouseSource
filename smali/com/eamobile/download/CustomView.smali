.class public Lcom/eamobile/download/CustomView;
.super Landroid/widget/LinearLayout;
.source "CustomView.java"

# interfaces
.implements Lcom/eamobile/download/IDownloadView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eamobile/download/CustomView$BackGround;
    }
.end annotation


# static fields
.field protected static final TEXT_BODY_SIZE:F = 16.0f


# instance fields
.field protected context:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/eamobile/download/CustomView;->context:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public static addButton(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/Button;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/LinearLayout;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xf

    .line 62
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "btn":Landroid/widget/Button;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 66
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 67
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/eamobile/download/CustomView;->showBackground()V

    .line 25
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected showBackground()V
    .locals 4

    .prologue
    .line 29
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/eamobile/download/CustomView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/eamobile/download/CustomView;->setOrientation(I)V

    .line 32
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/eamobile/download/CustomView;->setGravity(I)V

    .line 33
    new-instance v0, Lcom/eamobile/download/CustomView$BackGround;

    invoke-direct {v0, p0}, Lcom/eamobile/download/CustomView$BackGround;-><init>(Lcom/eamobile/download/CustomView;)V

    .line 34
    .local v0, "background":Lcom/eamobile/download/CustomView$BackGround;
    invoke-virtual {p0, v0}, Lcom/eamobile/download/CustomView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    return-void
.end method
