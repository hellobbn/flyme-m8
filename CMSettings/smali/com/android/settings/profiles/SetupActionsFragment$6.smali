.class Lorg/flerovium/settings/profiles/SetupActionsFragment$6;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/profiles/SetupActionsFragment;->requestDozeModeDialog()Landroid/app/AlertDialog;
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
    .line 630
    iput-object p1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$6;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 633
    iget-object v0, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$6;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lorg/flerovium/settings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    # getter for: Lorg/flerovium/settings/profiles/SetupActionsFragment;->DOZE_MAPPING:[I
    invoke-static {}, Lorg/flerovium/settings/profiles/SetupActionsFragment;->access$400()[I

    move-result-object v1

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcyanogenmod/app/Profile;->setDozeMode(I)V

    .line 634
    iget-object v0, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$6;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    # invokes: Lorg/flerovium/settings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lorg/flerovium/settings/profiles/SetupActionsFragment;->access$100(Lorg/flerovium/settings/profiles/SetupActionsFragment;)V

    .line 635
    iget-object v0, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$6;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lorg/flerovium/settings/profiles/SetupActionsFragment;->mAdapter:Lorg/flerovium/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lorg/flerovium/settings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 636
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 637
    return-void
.end method
