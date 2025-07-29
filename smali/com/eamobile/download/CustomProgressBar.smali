.class public Lcom/eamobile/download/CustomProgressBar;
.super Landroid/view/View;
.source "CustomProgressBar.java"


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private progress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/eamobile/download/CustomProgressBar;->paint:Landroid/graphics/Paint;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/eamobile/download/CustomProgressBar;->progress:F

    .line 21
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x1

    const/16 v9, 0x78

    .line 42
    iget-object v7, p0, Lcom/eamobile/download/CustomProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object v7, p0, Lcom/eamobile/download/CustomProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 44
    iget-object v7, p0, Lcom/eamobile/download/CustomProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget-object v7, p0, Lcom/eamobile/download/CustomProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v7, p0, Lcom/eamobile/download/CustomProgressBar;->paint:Landroid/graphics/Paint;

    const/16 v8, 0xb4

    invoke-virtual {v7, v8, v9, v9, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 51
    const/16 v0, 0x12

    .line 52
    .local v0, "barLeft":I
    invoke-virtual {p0}, Lcom/eamobile/download/CustomProgressBar;->getWidth()I

    move-result v7

    const/16 v8, 0x12

    sub-int v1, v7, v8

    .line 54
    .local v1, "barRight":I
    new-instance v5, Landroid/graphics/RectF;

    const/high16 v7, 0x41900000    # 18.0f

    const/high16 v8, 0x3f800000    # 1.0f

    int-to-float v9, v1

    const/high16 v10, 0x42040000    # 33.0f

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 55
    .local v5, "r":Landroid/graphics/RectF;
    iget-object v7, p0, Lcom/eamobile/download/CustomProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 57
    iget-object v7, p0, Lcom/eamobile/download/CustomProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v7, p0, Lcom/eamobile/download/CustomProgressBar;->paint:Landroid/graphics/Paint;

    const/16 v8, -0x100

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    const/16 v3, 0x13

    .line 61
    .local v3, "fillBarLeft":I
    sub-int v4, v1, v11

    .line 63
    .local v4, "fillBarRight":I
    sub-int v7, v4, v3

    int-to-float v7, v7

    iget v8, p0, Lcom/eamobile/download/CustomProgressBar;->progress:F

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    add-int v2, v3, v7

    .line 64
    .local v2, "curPos":I
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v3

    const/high16 v8, 0x40000000    # 2.0f

    int-to-float v9, v2

    const/high16 v10, 0x42000000    # 32.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 65
    .local v6, "r2":Landroid/graphics/RectF;
    iget-object v7, p0, Lcom/eamobile/download/CustomProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 66
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 35
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 36
    .local v0, "parentWidth":I
    const/16 v1, 0x22

    invoke-virtual {p0, v0, v1}, Lcom/eamobile/download/CustomProgressBar;->setMeasuredDimension(II)V

    .line 37
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 25
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 26
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 27
    :cond_1
    iput p1, p0, Lcom/eamobile/download/CustomProgressBar;->progress:F

    .line 28
    return-void
.end method
