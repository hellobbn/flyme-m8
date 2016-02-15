.class Lorg/flerovium/settings/TrustedCredentialsSettings$5;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/TrustedCredentialsSettings;->showCertDialog(Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/TrustedCredentialsSettings;

.field final synthetic val$certDialog:Landroid/app/Dialog;

.field final synthetic val$certHolder:Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/TrustedCredentialsSettings;Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$5;->this$0:Lorg/flerovium/settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$5;->val$certHolder:Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;

    iput-object p3, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$5;->val$certDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 693
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$5;->this$0:Lorg/flerovium/settings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Lorg/flerovium/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 694
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$5;->val$certHolder:Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;

    # getter for: Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;
    invoke-static {v2}, Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;)Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;

    move-result-object v2

    iget-object v3, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$5;->val$certHolder:Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;

    # invokes: Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v2, v3}, Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;->access$3200(Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 695
    const v2, 0x1040013

    new-instance v3, Lorg/flerovium/settings/TrustedCredentialsSettings$5$1;

    invoke-direct {v3, p0}, Lorg/flerovium/settings/TrustedCredentialsSettings$5$1;-><init>(Lorg/flerovium/settings/TrustedCredentialsSettings$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 703
    const v2, 0x1040009

    new-instance v3, Lorg/flerovium/settings/TrustedCredentialsSettings$5$2;

    invoke-direct {v3, p0}, Lorg/flerovium/settings/TrustedCredentialsSettings$5$2;-><init>(Lorg/flerovium/settings/TrustedCredentialsSettings$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 709
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 710
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 711
    return-void
.end method
