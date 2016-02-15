.class Lorg/flerovium/settings/notification/ZenModeAutomaticConditionSelection$1;
.super Ljava/lang/Object;
.source "ZenModeAutomaticConditionSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/notification/ZenModeAutomaticConditionSelection;->newCheckBox(Ljava/lang/Object;)Landroid/widget/CheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/notification/ZenModeAutomaticConditionSelection;

.field final synthetic val$button:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/notification/ZenModeAutomaticConditionSelection;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lorg/flerovium/settings/notification/ZenModeAutomaticConditionSelection$1;->this$0:Lorg/flerovium/settings/notification/ZenModeAutomaticConditionSelection;

    iput-object p2, p0, Lorg/flerovium/settings/notification/ZenModeAutomaticConditionSelection$1;->val$button:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 78
    iget-object v1, p0, Lorg/flerovium/settings/notification/ZenModeAutomaticConditionSelection$1;->this$0:Lorg/flerovium/settings/notification/ZenModeAutomaticConditionSelection;

    iget-object v0, p0, Lorg/flerovium/settings/notification/ZenModeAutomaticConditionSelection$1;->val$button:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    # invokes: Lorg/flerovium/settings/notification/ZenModeAutomaticConditionSelection;->setSelectedCondition(Landroid/net/Uri;Z)V
    invoke-static {v1, v0, p2}, Lorg/flerovium/settings/notification/ZenModeAutomaticConditionSelection;->access$100(Lorg/flerovium/settings/notification/ZenModeAutomaticConditionSelection;Landroid/net/Uri;Z)V

    .line 79
    return-void
.end method
