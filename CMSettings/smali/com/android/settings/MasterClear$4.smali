.class Lorg/flerovium/settings/MasterClear$4;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/MasterClear;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/MasterClear;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/MasterClear;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lorg/flerovium/settings/MasterClear$4;->this$0:Lorg/flerovium/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lorg/flerovium/settings/MasterClear$4;->this$0:Lorg/flerovium/settings/MasterClear;

    const/4 v1, 0x0

    const/16 v2, 0x38

    invoke-static {v0, v1, v2}, Lorg/flerovium/settings/SecuritySettings;->updateCyanogenDeviceLockState(Landroid/app/Fragment;ZI)V

    .line 256
    return-void
.end method
