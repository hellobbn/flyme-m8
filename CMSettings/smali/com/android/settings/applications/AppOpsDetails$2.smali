.class Lorg/flerovium/settings/applications/AppOpsDetails$2;
.super Ljava/lang/Object;
.source "AppOpsDetails.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/applications/AppOpsDetails;->refreshUi()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/applications/AppOpsDetails;

.field final synthetic val$entry:Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;

.field final synthetic val$switchOp:I


# direct methods
.method constructor <init>(Lorg/flerovium/settings/applications/AppOpsDetails;ILorg/flerovium/settings/applications/AppOpsState$AppOpEntry;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lorg/flerovium/settings/applications/AppOpsDetails$2;->this$0:Lorg/flerovium/settings/applications/AppOpsDetails;

    iput p2, p0, Lorg/flerovium/settings/applications/AppOpsDetails$2;->val$switchOp:I

    iput-object p3, p0, Lorg/flerovium/settings/applications/AppOpsDetails$2;->val$entry:Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lorg/flerovium/settings/applications/AppOpsDetails$2;->this$0:Lorg/flerovium/settings/applications/AppOpsDetails;

    # getter for: Lorg/flerovium/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;
    invoke-static {v0}, Lorg/flerovium/settings/applications/AppOpsDetails;->access$100(Lorg/flerovium/settings/applications/AppOpsDetails;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget v2, p0, Lorg/flerovium/settings/applications/AppOpsDetails$2;->val$switchOp:I

    iget-object v0, p0, Lorg/flerovium/settings/applications/AppOpsDetails$2;->val$entry:Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v0}, Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v3

    iget-object v0, p0, Lorg/flerovium/settings/applications/AppOpsDetails$2;->val$entry:Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;

    invoke-virtual {v0}, Lorg/flerovium/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 229
    return-void

    .line 224
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
