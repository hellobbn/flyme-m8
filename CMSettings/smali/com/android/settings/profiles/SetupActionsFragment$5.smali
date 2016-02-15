.class Lorg/flerovium/settings/profiles/SetupActionsFragment$5;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/profiles/SetupActionsFragment;->requestLockscreenModeDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/profiles/SetupActionsFragment;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$5;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 604
    iget-object v0, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$5;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lorg/flerovium/settings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    new-instance v1, Lcyanogenmod/profiles/LockSettings;

    # getter for: Lorg/flerovium/settings/profiles/SetupActionsFragment;->LOCKMODE_MAPPING:[I
    invoke-static {}, Lorg/flerovium/settings/profiles/SetupActionsFragment;->access$300()[I

    move-result-object v2

    aget v2, v2, p2

    invoke-direct {v1, v2}, Lcyanogenmod/profiles/LockSettings;-><init>(I)V

    invoke-virtual {v0, v1}, Lcyanogenmod/app/Profile;->setScreenLockMode(Lcyanogenmod/profiles/LockSettings;)V

    .line 605
    iget-object v0, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$5;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    # invokes: Lorg/flerovium/settings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lorg/flerovium/settings/profiles/SetupActionsFragment;->access$100(Lorg/flerovium/settings/profiles/SetupActionsFragment;)V

    .line 606
    iget-object v0, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$5;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lorg/flerovium/settings/profiles/SetupActionsFragment;->mAdapter:Lorg/flerovium/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lorg/flerovium/settings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 607
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 608
    return-void
.end method
