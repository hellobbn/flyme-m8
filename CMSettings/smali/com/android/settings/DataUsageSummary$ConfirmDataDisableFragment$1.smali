.class Lorg/flerovium/settings/DataUsageSummary$ConfirmDataDisableFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/DataUsageSummary$ConfirmDataDisableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/DataUsageSummary$ConfirmDataDisableFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/DataUsageSummary$ConfirmDataDisableFragment;)V
    .locals 0

    .prologue
    .line 2123
    iput-object p1, p0, Lorg/flerovium/settings/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lorg/flerovium/settings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2126
    iget-object v1, p0, Lorg/flerovium/settings/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lorg/flerovium/settings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v1}, Lorg/flerovium/settings/DataUsageSummary$ConfirmDataDisableFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/flerovium/settings/DataUsageSummary;

    .line 2127
    .local v0, "target":Lorg/flerovium/settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2129
    const/4 v1, 0x0

    # invokes: Lorg/flerovium/settings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lorg/flerovium/settings/DataUsageSummary;->access$700(Lorg/flerovium/settings/DataUsageSummary;Z)V

    .line 2131
    :cond_0
    return-void
.end method
