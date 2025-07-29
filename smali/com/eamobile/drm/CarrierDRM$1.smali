.class Lcom/eamobile/drm/CarrierDRM$1;
.super Ljava/lang/Object;
.source "CarrierDRM.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 209
    invoke-static {}, Lcom/eamobile/drm/CarrierDRM;->access$0()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 210
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 211
    sput-boolean v1, Lcom/eamobile/drm/CarrierDRM;->isOnAlert:Z

    .line 212
    return-void
.end method
