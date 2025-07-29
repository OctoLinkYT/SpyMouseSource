.class Lcom/eamobile/drm/CarrierDRM$2;
.super Ljava/lang/Object;
.source "CarrierDRM.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eamobile/drm/CarrierDRM;->showAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 221
    invoke-static {}, Lcom/eamobile/drm/CarrierDRM;->access$0()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 222
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 223
    sput-boolean v1, Lcom/eamobile/drm/CarrierDRM;->isOnAlert:Z

    .line 224
    return-void
.end method
