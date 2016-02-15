.class Lorg/flerovium/settings/profiles/SetupActionsFragment$10;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/profiles/SetupActionsFragment;->requestMobileConnectionOverrideDialog(Lcyanogenmod/profiles/ConnectionSettings;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

.field final synthetic val$setting:Lcyanogenmod/profiles/ConnectionSettings;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/profiles/SetupActionsFragment;Lcyanogenmod/profiles/ConnectionSettings;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$10;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 820
    packed-switch p2, :pswitch_data_0

    .line 825
    iget-object v0, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/ConnectionSettings;->setOverride(Z)V

    .line 826
    iget-object v0, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v0, p2}, Lcyanogenmod/profiles/ConnectionSettings;->setValue(I)V

    .line 828
    :goto_0
    iget-object v0, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$10;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lorg/flerovium/settings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget-object v1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    invoke-virtual {v0, v1}, Lcyanogenmod/app/Profile;->setConnectionSettings(Lcyanogenmod/profiles/ConnectionSettings;)V

    .line 829
    iget-object v0, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$10;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    iget-object v0, v0, Lorg/flerovium/settings/profiles/SetupActionsFragment;->mAdapter:Lorg/flerovium/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lorg/flerovium/settings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 830
    iget-object v0, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$10;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    # invokes: Lorg/flerovium/settings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v0}, Lorg/flerovium/settings/profiles/SetupActionsFragment;->access$100(Lorg/flerovium/settings/profiles/SetupActionsFragment;)V

    .line 831
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 832
    return-void

    .line 822
    :pswitch_0
    iget-object v0, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$10;->val$setting:Lcyanogenmod/profiles/ConnectionSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcyanogenmod/profiles/ConnectionSettings;->setOverride(Z)V

    goto :goto_0

    .line 820
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
