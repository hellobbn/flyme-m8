.class Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment$2;
.super Ljava/lang/Object;
.source "WifiTriggerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;

.field final synthetic val$triggerId:Ljava/lang/String;

.field final synthetic val$triggerName:Ljava/lang/String;

.field final synthetic val$triggerType:I

.field final synthetic val$valueInts:[I


# direct methods
.method constructor <init>(Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;ILjava/lang/String;[ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment$2;->this$0:Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;

    iput p2, p0, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment$2;->val$triggerType:I

    iput-object p3, p0, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment$2;->val$triggerId:Ljava/lang/String;

    iput-object p4, p0, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment$2;->val$valueInts:[I

    iput-object p5, p0, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment$2;->val$triggerName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment$2;->this$0:Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;

    iget-object v0, v0, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    iget v1, p0, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment$2;->val$triggerType:I

    iget-object v2, p0, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment$2;->val$triggerId:Ljava/lang/String;

    iget-object v3, p0, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment$2;->val$valueInts:[I

    aget v3, v3, p2

    iget-object v4, p0, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment$2;->val$triggerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcyanogenmod/app/Profile;->setTrigger(ILjava/lang/String;ILjava/lang/String;)V

    .line 170
    iget-object v0, p0, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment$2;->this$0:Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;

    # getter for: Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;->mProfileManager:Lcyanogenmod/app/ProfileManager;
    invoke-static {v0}, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;->access$100(Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;)Lcyanogenmod/app/ProfileManager;

    move-result-object v0

    iget-object v1, p0, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment$2;->this$0:Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;

    iget-object v1, v1, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-virtual {v0, v1}, Lcyanogenmod/app/ProfileManager;->updateProfile(Lcyanogenmod/app/Profile;)V

    .line 171
    iget-object v0, p0, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment$2;->this$0:Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;

    # invokes: Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;->reloadTriggerListItems()V
    invoke-static {v0}, Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;->access$200(Lorg/flerovium/settings/profiles/triggers/WifiTriggerFragment;)V

    .line 172
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 173
    return-void
.end method
