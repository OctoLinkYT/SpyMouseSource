.class Lcom/eamobile/download/CustomView$BackGround;
.super Landroid/graphics/drawable/Drawable;
.source "CustomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eamobile/download/CustomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackGround"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eamobile/download/CustomView;


# direct methods
.method constructor <init>(Lcom/eamobile/download/CustomView;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/eamobile/download/CustomView$BackGround;->this$0:Lcom/eamobile/download/CustomView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 40
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    iget-object v0, v0, Lcom/eamobile/download/DownloadActivityInternal;->bmpBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v0

    iget-object v0, v0, Lcom/eamobile/download/DownloadActivityInternal;->bmpBg:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v2

    iget-object v2, v2, Lcom/eamobile/download/DownloadActivityInternal;->bmpBg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-static {}, Lcom/eamobile/download/DownloadActivityInternal;->getMainActivity()Lcom/eamobile/download/DownloadActivityInternal;

    move-result-object v3

    iget-object v3, v3, Lcom/eamobile/download/DownloadActivityInternal;->bmpBg:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 44
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 53
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 57
    return-void
.end method
