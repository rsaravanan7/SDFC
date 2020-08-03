        <apex:page>
        <apex:includeLightning />     --- IMP

        <div id="lightning" />        --- IMP

        <script>
            $Lightning.use("c:lcvfTest", function() {             // call class -- Application Name
              $Lightning.createComponent("lightning:button",      // call component like c:Component Name
                  { label : "Press Me!" },                        // {} Parameters like constructor
                  "lightning",                                    // <div>
                  function(cmp) {
                    console.log("button was created");
                    // do some stuff
                  }
              );
            });
        </script>
    </apex:page>
