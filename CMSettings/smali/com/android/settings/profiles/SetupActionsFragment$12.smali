.class Lorg/flerovium/settings/profiles/SetupActionsFragment$12;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/profiles/SetupActionsFragment;->requestVolumeDialog(ILcyanogenmod/profiles/StreamSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

.field final synthetic val$override:Landroid/widget/CheckBox;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;

.field final synthetic val$streamSettings:Lcyanogenmod/profiles/StreamSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/profiles/SetupActionsFragment;Landroid/widget/SeekBar;Lcyanogenmod/profiles/StreamSettings;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$12;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$12;->val$seekBar:Landroid/widget/SeekBar;

    iput-object p3, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$12;->val$streamSettings:Lcyanogenmod/profiles/StreamSettings;

    iput-object p4, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$12;->val$override:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 866
    iget-object v1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$12;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 867
    .local v0, "value":I
    iget-object v1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$12;->val$streamSettings:Lcyanogenmod/profiles/StreamSettings;

    iget-object v2, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$12;->val$override:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcyanogenmod/profiles/StreamSettings;->setOverride(Z)V

    .line 868
    iget-object v1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$12;->val$streamSettings:Lcyanogenmod/profiles/StreamSettings;

    invoke-virtual {v1, v0}, Lcyanogenmod/profiles/StreamSettings;->setValue(I)V

    .line 869
    iget-object v1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$12;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lorg/flerovium/settings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v2, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$12;->val$streamSettings:Lcyanogenmod/profiles/StreamSettings;

    invoke-virtual {v1, v2}, Lcyanogenmod/app/Profile;->setStreamSettings(Lcyanogenmod/profiles/StreamSettings;)V

    .line 870
    iget-object v1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$12;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lorg/flerovium/settings/profiles/SetupActionsFragment;->mAdapter:Lorg/flerovium/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v1}, Lorg/flerovium/settings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 871
    iget-object v1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$12;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    # invokes: Lorg/flerovium/settings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v1}, Lorg/flerovium/settings/profiles/SetupActionsFragment;->access$100(Lorg/flerovium/settings/profiles/SetupActionsFragment;)V

    .line 872
    return-void
.end method
