.class Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;
.super Ljava/lang/Object;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;->this$0:Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;->this$0:Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-virtual {v0}, Lorg/flerovium/settings/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->dismiss()V

    .line 675
    return-void
.end method
