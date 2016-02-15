.class Lorg/flerovium/settings/profiles/SetupActionsFragment$17;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/profiles/SetupActionsFragment;->requestProfileName()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

.field final synthetic val$entry:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/profiles/SetupActionsFragment;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 938
    iput-object p1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$17;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    iput-object p2, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$17;->val$entry:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 941
    iget-object v1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$17;->val$entry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$17;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lorg/flerovium/settings/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v1, v0}, Lcyanogenmod/app/Profile;->setName(Ljava/lang/String;)V

    .line 943
    iget-object v1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$17;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    iget-object v1, v1, Lorg/flerovium/settings/profiles/SetupActionsFragment;->mAdapter:Lorg/flerovium/settings/profiles/actions/ItemListAdapter;

    invoke-virtual {v1}, Lorg/flerovium/settings/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 944
    iget-object v1, p0, Lorg/flerovium/settings/profiles/SetupActionsFragment$17;->this$0:Lorg/flerovium/settings/profiles/SetupActionsFragment;

    # invokes: Lorg/flerovium/settings/profiles/SetupActionsFragment;->updateProfile()V
    invoke-static {v1}, Lorg/flerovium/settings/profiles/SetupActionsFragment;->access$100(Lorg/flerovium/settings/profiles/SetupActionsFragment;)V

    .line 945
    return-void
.end method
