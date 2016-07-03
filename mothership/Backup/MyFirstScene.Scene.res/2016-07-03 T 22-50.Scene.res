<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">0</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="192365404">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="410081842">
        <_items dataType="Array" type="Duality.Component[]" id="541555152">
          <item dataType="Struct" type="Duality.Components.Transform" id="2552680336">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">192365404</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-57.6982422</X>
              <Y dataType="Float">38.465332</Y>
              <Z dataType="Float">1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-57.6982422</X>
              <Y dataType="Float">38.465332</Y>
              <Z dataType="Float">1</Z>
            </posAbs>
            <scale dataType="Float">2</scale>
            <scaleAbs dataType="Float">2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </vel>
            <velAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </velAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1834531972">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">192365404</gameobj>
            <offset dataType="Int">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">1024</H>
              <W dataType="Float">1024</W>
              <X dataType="Float">-512</X>
              <Y dataType="Float">-512</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\fondo.Material.res</contentPath>
            </sharedMat>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3255141928">
            <active dataType="Bool">true</active>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">192365404</gameobj>
            <ignoreGravity dataType="Bool">false</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </linearVel>
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3239274264">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1241377324">
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="1299772644">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3255141928</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">true</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="3840726980">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-509.0056</X>
                      <Y dataType="Float">-509.095764</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-509.0056</X>
                      <Y dataType="Float">511.306274</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-574.074768</X>
                      <Y dataType="Float">534.9678</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-577.0324</X>
                      <Y dataType="Float">-541.6303</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="2476596758">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3255141928</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">true</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="825508526">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-511.963257</X>
                      <Y dataType="Float">502.433319</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">511.3964</X>
                      <Y dataType="Float">505.391022</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">543.931</X>
                      <Y dataType="Float">555.6717</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-577.0324</X>
                      <Y dataType="Float">543.840942</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="1406794464">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3255141928</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">true</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="3919472904">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">511.3964</X>
                      <Y dataType="Float">-509.095764</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">514.3541</X>
                      <Y dataType="Float">508.348572</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">552.8041</X>
                      <Y dataType="Float">561.5869</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">543.931</X>
                      <Y dataType="Float">-535.714966</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="672455266">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3255141928</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">true</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="2529665138">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-509.4508</X>
                      <Y dataType="Float">-514.1351</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">513.2212</X>
                      <Y dataType="Float">-511.082336</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">555.9598</X>
                      <Y dataType="Float">-553.820862</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-573.5586</X>
                      <Y dataType="Float">-544.6626</Y>
                    </item>
                  </vertices>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">6</_version>
            </shapes>
          </item>
          <item dataType="Struct" type="naves.SpaceBagController" id="1395198759">
            <_x003C_PlayerPrefab_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
              <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
            </_x003C_PlayerPrefab_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">192365404</gameobj>
            <Players dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Int32],[naves.Player]]" id="2476053379" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="167137062">
                  <item dataType="Int">1</item>
                  <item dataType="Int">2</item>
                  <item dataType="Int">3</item>
                  <item dataType="Int">4</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="1273219770">
                  <item dataType="Struct" type="naves.Player" id="510171941">
                    <active dataType="Bool">true</active>
                    <gameobj dataType="Struct" type="Duality.GameObject" id="1425580631">
                      <active dataType="Bool">true</active>
                      <children />
                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2563905328">
                        <_items dataType="Array" type="Duality.Component[]" id="3406432956" length="8">
                          <item dataType="Struct" type="Duality.Components.Transform" id="3785895563">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1425580631</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3067747199">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1425580631</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="193389859">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1425580631</gameobj>
                          </item>
                          <item dataType="ObjectRef">510171941</item>
                          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="3168209453">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1425580631</gameobj>
                          </item>
                        </_items>
                        <_size dataType="Int">5</_size>
                        <_version dataType="Int">5</_version>
                      </compList>
                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="398787182" surrogate="true">
                        <header />
                        <body>
                          <keys dataType="Array" type="System.Object[]" id="4292611842">
                            <item dataType="Type" id="3431736720" value="Duality.Components.Transform" />
                            <item dataType="Type" id="2461510382" value="Duality.Components.Renderers.SpriteRenderer" />
                            <item dataType="Type" id="4238497900" value="Duality.Components.Physics.RigidBody" />
                            <item dataType="Type" id="3426220818" value="naves.Player" />
                            <item dataType="Type" id="896313160" value="Duality.Components.Renderers.TextRenderer" />
                          </keys>
                          <values dataType="Array" type="System.Object[]" id="3241120650">
                            <item dataType="ObjectRef">3785895563</item>
                            <item dataType="ObjectRef">3067747199</item>
                            <item dataType="ObjectRef">193389859</item>
                            <item dataType="ObjectRef">510171941</item>
                            <item dataType="ObjectRef">3168209453</item>
                          </values>
                        </body>
                      </compMap>
                      <compTransform dataType="ObjectRef">3785895563</compTransform>
                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                        <header>
                          <data dataType="Array" type="System.Byte[]" id="538323314">He2UkGxvXU+yu6tohf5WFw==</data>
                        </header>
                        <body />
                      </identifier>
                      <initState dataType="Enum" type="Duality.InitState" name="Disposed" value="3" />
                      <name dataType="String">ShipOne</name>
                      <parent />
                      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="3939169164">
                        <changes />
                        <obj dataType="ObjectRef">1425580631</obj>
                        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
                        </prefab>
                      </prefabLink>
                    </gameobj>
                  </item>
                  <item dataType="Struct" type="naves.Player" id="637040619">
                    <active dataType="Bool">true</active>
                    <gameobj dataType="Struct" type="Duality.GameObject" id="1552449309">
                      <active dataType="Bool">true</active>
                      <children />
                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="4111965868">
                        <_items dataType="Array" type="Duality.Component[]" id="919611108" length="8">
                          <item dataType="Struct" type="Duality.Components.Transform" id="3912764241">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1552449309</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3194615877">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1552449309</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="320258537">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1552449309</gameobj>
                          </item>
                          <item dataType="ObjectRef">637040619</item>
                          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="3295078131">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1552449309</gameobj>
                          </item>
                        </_items>
                        <_size dataType="Int">5</_size>
                        <_version dataType="Int">5</_version>
                      </compList>
                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1727492534" surrogate="true">
                        <header />
                        <body>
                          <keys dataType="Array" type="System.Object[]" id="1151579878">
                            <item dataType="ObjectRef">3431736720</item>
                            <item dataType="ObjectRef">2461510382</item>
                            <item dataType="ObjectRef">4238497900</item>
                            <item dataType="ObjectRef">3426220818</item>
                            <item dataType="ObjectRef">896313160</item>
                          </keys>
                          <values dataType="Array" type="System.Object[]" id="1285699898">
                            <item dataType="ObjectRef">3912764241</item>
                            <item dataType="ObjectRef">3194615877</item>
                            <item dataType="ObjectRef">320258537</item>
                            <item dataType="ObjectRef">637040619</item>
                            <item dataType="ObjectRef">3295078131</item>
                          </values>
                        </body>
                      </compMap>
                      <compTransform dataType="ObjectRef">3912764241</compTransform>
                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                        <header>
                          <data dataType="Array" type="System.Byte[]" id="1525367910">ADm3tT91nkaPKpw0qo9Sgw==</data>
                        </header>
                        <body />
                      </identifier>
                      <initState dataType="Enum" type="Duality.InitState" name="Disposed" value="3" />
                      <name dataType="String">ShipOne</name>
                      <parent />
                      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="443005176">
                        <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="4129351416">
                          <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="219169644" length="4">
                            <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                              <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="591637928">
                                <_items dataType="Array" type="System.Int32[]" id="1342015148"></_items>
                                <_size dataType="Int">0</_size>
                                <_version dataType="Int">1</_version>
                              </childIndex>
                              <componentType />
                              <prop dataType="MemberInfo" id="1957517214" value="P:Duality.GameObject:Name" />
                              <val dataType="String">ShipOne</val>
                            </item>
                          </_items>
                          <_size dataType="Int">1</_size>
                          <_version dataType="Int">1</_version>
                        </changes>
                        <obj dataType="ObjectRef">1552449309</obj>
                        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
                        </prefab>
                      </prefabLink>
                    </gameobj>
                  </item>
                  <item dataType="Struct" type="naves.Player" id="2707538535">
                    <active dataType="Bool">true</active>
                    <gameobj dataType="Struct" type="Duality.GameObject" id="3622947225">
                      <active dataType="Bool">true</active>
                      <children />
                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2176100876">
                        <_items dataType="Array" type="Duality.Component[]" id="3279123620" length="8">
                          <item dataType="Struct" type="Duality.Components.Transform" id="1688294861">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3622947225</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="970146497">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3622947225</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2390756453">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3622947225</gameobj>
                          </item>
                          <item dataType="ObjectRef">2707538535</item>
                          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="1070608751">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3622947225</gameobj>
                          </item>
                        </_items>
                        <_size dataType="Int">5</_size>
                        <_version dataType="Int">5</_version>
                      </compList>
                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="241713910" surrogate="true">
                        <header />
                        <body>
                          <keys dataType="Array" type="System.Object[]" id="3809352326">
                            <item dataType="ObjectRef">3431736720</item>
                            <item dataType="ObjectRef">2461510382</item>
                            <item dataType="ObjectRef">4238497900</item>
                            <item dataType="ObjectRef">3426220818</item>
                            <item dataType="ObjectRef">896313160</item>
                          </keys>
                          <values dataType="Array" type="System.Object[]" id="2170527546">
                            <item dataType="ObjectRef">1688294861</item>
                            <item dataType="ObjectRef">970146497</item>
                            <item dataType="ObjectRef">2390756453</item>
                            <item dataType="ObjectRef">2707538535</item>
                            <item dataType="ObjectRef">1070608751</item>
                          </values>
                        </body>
                      </compMap>
                      <compTransform dataType="ObjectRef">1688294861</compTransform>
                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                        <header>
                          <data dataType="Array" type="System.Byte[]" id="1243729414">4oHhIBCU10iGrWPVB4rHrA==</data>
                        </header>
                        <body />
                      </identifier>
                      <initState dataType="Enum" type="Duality.InitState" name="Disposed" value="3" />
                      <name dataType="String">ShipOne</name>
                      <parent />
                      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="663145112">
                        <changes />
                        <obj dataType="ObjectRef">3622947225</obj>
                        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
                        </prefab>
                      </prefabLink>
                    </gameobj>
                  </item>
                  <item dataType="Struct" type="naves.Player" id="2055004662">
                    <active dataType="Bool">true</active>
                    <gameobj dataType="Struct" type="Duality.GameObject" id="2970413352">
                      <active dataType="Bool">true</active>
                      <children />
                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1584346294">
                        <_items dataType="Array" type="Duality.Component[]" id="2544586592" length="8">
                          <item dataType="Struct" type="Duality.Components.Transform" id="1035760988">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">2970413352</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="317612624">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">2970413352</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1738222580">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">2970413352</gameobj>
                          </item>
                          <item dataType="ObjectRef">2055004662</item>
                          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="418074878">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">2970413352</gameobj>
                          </item>
                        </_items>
                        <_size dataType="Int">5</_size>
                        <_version dataType="Int">5</_version>
                      </compList>
                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2482365082" surrogate="true">
                        <header />
                        <body>
                          <keys dataType="Array" type="System.Object[]" id="3556543876">
                            <item dataType="ObjectRef">3431736720</item>
                            <item dataType="ObjectRef">2461510382</item>
                            <item dataType="ObjectRef">4238497900</item>
                            <item dataType="ObjectRef">3426220818</item>
                            <item dataType="ObjectRef">896313160</item>
                          </keys>
                          <values dataType="Array" type="System.Object[]" id="2745844886">
                            <item dataType="ObjectRef">1035760988</item>
                            <item dataType="ObjectRef">317612624</item>
                            <item dataType="ObjectRef">1738222580</item>
                            <item dataType="ObjectRef">2055004662</item>
                            <item dataType="ObjectRef">418074878</item>
                          </values>
                        </body>
                      </compMap>
                      <compTransform dataType="ObjectRef">1035760988</compTransform>
                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                        <header>
                          <data dataType="Array" type="System.Byte[]" id="1679942464">4a1I5ERUs0SbxgGF4zHneg==</data>
                        </header>
                        <body />
                      </identifier>
                      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                      <name dataType="String">ShipOne</name>
                      <parent />
                      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="4165718870">
                        <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="3701367360">
                          <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="1539746588" length="4">
                            <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
                              <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="2934507720">
                                <_items dataType="Array" type="System.Int32[]" id="1558116972"></_items>
                                <_size dataType="Int">0</_size>
                                <_version dataType="Int">1</_version>
                              </childIndex>
                              <componentType dataType="ObjectRef">4238497900</componentType>
                              <prop dataType="MemberInfo" id="1827480286" value="P:Duality.Components.Physics.RigidBody:Shapes" />
                              <val dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2464374068">
                                <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3778610504" length="3">
                                  <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="413825132">
                                    <density dataType="Float">1</density>
                                    <friction dataType="Float">0.3</friction>
                                    <parent />
                                    <restitution dataType="Float">0.3</restitution>
                                    <sensor dataType="Bool">false</sensor>
                                    <vertices dataType="Array" type="Duality.Vector2[]" id="2150866788">
                                      <item dataType="Struct" type="Duality.Vector2">
                                        <X dataType="Float">-0.8737386</X>
                                        <Y dataType="Float">-17.75641</Y>
                                      </item>
                                      <item dataType="Struct" type="Duality.Vector2">
                                        <X dataType="Float">-5.22240734</X>
                                        <Y dataType="Float">3.12484884</Y>
                                      </item>
                                      <item dataType="Struct" type="Duality.Vector2">
                                        <X dataType="Float">3.10014486</X>
                                        <Y dataType="Float">2.99173713</Y>
                                      </item>
                                    </vertices>
                                  </item>
                                </_items>
                                <_size dataType="Int">1</_size>
                                <_version dataType="Int">8</_version>
                              </val>
                            </item>
                          </_items>
                          <_size dataType="Int">1</_size>
                          <_version dataType="Int">3</_version>
                        </changes>
                        <obj dataType="ObjectRef">2970413352</obj>
                        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
                        </prefab>
                      </prefabLink>
                    </gameobj>
                  </item>
                </values>
              </body>
            </Players>
            <random dataType="Struct" type="System.Random" id="2313906616">
              <inext dataType="Int">0</inext>
              <inextp dataType="Int">21</inextp>
              <SeedArray dataType="Array" type="System.Int32[]" id="2305393385">0, 1191106036, 1661701395, 1772452401, 195059178, 1908430771, 1006976092, 1002265376, 1512946080, 727082865, 1232795238, 2056792077, 2009805063, 1846805505, 1774190030, 1111787344, 1148575927, 795278909, 172758304, 269226132, 1049640438, 1214806018, 1861273516, 2033098807, 1251162450, 558539398, 1438826563, 1786493751, 714231662, 186881519, 1599367775, 1409070551, 372001291, 1651187456, 489601708, 1080229833, 1867044089, 1649298861, 932528525, 1723824013, 1645680307, 490316195, 1665186017, 1736144708, 2003047848, 1802144445, 1278068730, 1098765299, 1553729473, 1685320673, 932202941, 1730155124, 581173585, 1932534932, 2067484739, 773609277</SeedArray>
            </random>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3587796298" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1511488808">
            <item dataType="ObjectRef">3431736720</item>
            <item dataType="ObjectRef">2461510382</item>
            <item dataType="ObjectRef">4238497900</item>
            <item dataType="Type" id="1193717676" value="naves.SpaceBagController" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="73228446">
            <item dataType="ObjectRef">2552680336</item>
            <item dataType="ObjectRef">1834531972</item>
            <item dataType="ObjectRef">3255141928</item>
            <item dataType="ObjectRef">1395198759</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2552680336</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3419015700">NQFEZjNUZkKfJTl0Uv3wDw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">SpaceBg</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3163566341">
      <active dataType="Bool">false</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2030965879">
        <_items dataType="Array" type="Duality.Component[]" id="26940814">
          <item dataType="Struct" type="Duality.Components.Transform" id="1228913977">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3163566341</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="510765613">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3163566341</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1931375569">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3163566341</gameobj>
          </item>
          <item dataType="Struct" type="naves.BulletController" id="1655702322">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3163566341</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3030165824" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3549918653">
            <item dataType="ObjectRef">3431736720</item>
            <item dataType="ObjectRef">2461510382</item>
            <item dataType="ObjectRef">4238497900</item>
            <item dataType="Type" id="2388123686" value="naves.BulletController" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="4233994936">
            <item dataType="ObjectRef">1228913977</item>
            <item dataType="ObjectRef">510765613</item>
            <item dataType="ObjectRef">1931375569</item>
            <item dataType="ObjectRef">1655702322</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1228913977</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2505630103">xHfovXjz+ka3w/Jk6DmxOw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">bulletOne</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="1067258069">
        <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="832204980">
          <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="1722518948" length="4">
            <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
              <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="2070205384">
                <_items dataType="Array" type="System.Int32[]" id="3567520364"></_items>
                <_size dataType="Int">0</_size>
                <_version dataType="Int">1</_version>
              </childIndex>
              <componentType dataType="ObjectRef">4238497900</componentType>
              <prop dataType="ObjectRef">1827480286</prop>
              <val dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="6132446">
                <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="3185777802">
                  <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="1171723232">
                    <density dataType="Float">1</density>
                    <friction dataType="Float">0.3</friction>
                    <parent />
                    <restitution dataType="Float">0.3</restitution>
                    <sensor dataType="Bool">true</sensor>
                    <vertices dataType="Array" type="Duality.Vector2[]" id="1582212060">
                      <item dataType="Struct" type="Duality.Vector2">
                        <X dataType="Float">-2.588004</X>
                        <Y dataType="Float">-14.2024918</Y>
                      </item>
                      <item dataType="Struct" type="Duality.Vector2">
                        <X dataType="Float">2.1988554</X>
                        <Y dataType="Float">-14.1533995</Y>
                      </item>
                      <item dataType="Struct" type="Duality.Vector2">
                        <X dataType="Float">2.57398248</X>
                        <Y dataType="Float">13.92896</Y>
                      </item>
                      <item dataType="Struct" type="Duality.Vector2">
                        <X dataType="Float">-2.4762876</X>
                        <Y dataType="Float">13.92896</Y>
                      </item>
                    </vertices>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">6</_version>
              </val>
            </item>
            <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
              <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="1167426100">
                <_items dataType="Array" type="System.Int32[]" id="850817352"></_items>
                <_size dataType="Int">0</_size>
                <_version dataType="Int">1</_version>
              </childIndex>
              <componentType />
              <prop dataType="MemberInfo" id="500620066" value="P:Duality.GameObject:ActiveSingle" />
              <val dataType="Bool">false</val>
            </item>
          </_items>
          <_size dataType="Int">2</_size>
          <_version dataType="Int">4</_version>
        </changes>
        <obj dataType="ObjectRef">3163566341</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Bullet.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3835831138">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="337013676">
        <_items dataType="Array" type="Duality.Component[]" id="4106734820" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="1901178774">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3835831138</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-500</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-500</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </vel>
            <velAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </velAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="78139649">
            <active dataType="Bool">true</active>
            <farZ dataType="Float">100000</farZ>
            <focusDist dataType="Float">500</focusDist>
            <gameobj dataType="ObjectRef">3835831138</gameobj>
            <nearZ dataType="Float">0</nearZ>
            <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="1668650269">
              <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="4038397158" length="4">
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="204172672">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">0</A>
                    <B dataType="Byte">0</B>
                    <G dataType="Byte">0</G>
                    <R dataType="Byte">0</R>
                  </clearColor>
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                    <contentPath />
                  </output>
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1406912718">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">0</A>
                    <B dataType="Byte">0</B>
                    <G dataType="Byte">0</G>
                    <R dataType="Byte">0</R>
                  </clearColor>
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="None" value="0" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="OrthoScreen" value="1" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                    <contentPath />
                  </output>
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">2</_version>
            </passes>
            <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Parallax" value="1" />
            <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1374614454" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1428593126">
            <item dataType="ObjectRef">3431736720</item>
            <item dataType="Type" id="2839634304" value="Duality.Components.Camera" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3318179130">
            <item dataType="ObjectRef">1901178774</item>
            <item dataType="ObjectRef">78139649</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1901178774</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3069705062">8mNdFP8BhUCkSPG6sxtEFQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Camera</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2533080139">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1545184057">
        <_items dataType="Array" type="Duality.Component[]" id="3114927822" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="598427775">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2533080139</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </vel>
            <velAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </velAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="4275708961">
            <active dataType="Bool">true</active>
            <blockAlign dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <gameobj dataType="ObjectRef">2533080139</gameobj>
            <iconMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath />
            </iconMat>
            <offset dataType="Int">0</offset>
            <text dataType="Struct" type="Duality.Drawing.FormattedText" id="892426129">
              <flowAreas />
              <fonts dataType="Array" type="Duality.ContentRef`1[[Duality.Resources.Font]][]" id="571820526">
                <item dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Font]]">
                  <contentPath dataType="String">Default:Font:GenericMonospace10</contentPath>
                </item>
              </fonts>
              <icons />
              <lineAlign dataType="Enum" type="Duality.Alignment" name="Left" value="1" />
              <maxHeight dataType="Int">0</maxHeight>
              <maxWidth dataType="Int">0</maxWidth>
              <sourceText dataType="String">Hello World</sourceText>
              <wrapMode dataType="Enum" type="Duality.Drawing.FormattedText+WrapMode" name="Word" value="1" />
            </text>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="naves.ScoreText" id="682154827">
            <active dataType="Bool">true</active>
            <camera dataType="ObjectRef">3835831138</camera>
            <changed dataType="Bool">true</changed>
            <gameobj dataType="ObjectRef">2533080139</gameobj>
            <text dataType="String">Dead: </text>
            <textRender dataType="ObjectRef">4275708961</textRender>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">3</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1492368128" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2034562195">
            <item dataType="ObjectRef">3431736720</item>
            <item dataType="ObjectRef">896313160</item>
            <item dataType="Type" id="2072852710" value="naves.ScoreText" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2625496824">
            <item dataType="ObjectRef">598427775</item>
            <item dataType="ObjectRef">4275708961</item>
            <item dataType="ObjectRef">682154827</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">598427775</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2030241657">dPwQHuvqTECxOWIksrSMcw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">TextRenderer</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="ObjectRef">2970413352</item>
    <item dataType="Struct" type="Duality.GameObject" id="4282489107">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="18748321">
        <_items dataType="Array" type="Duality.Component[]" id="2150492270">
          <item dataType="Struct" type="Duality.Components.Transform" id="2347836743">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4282489107</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">710.12</X>
              <Y dataType="Float">709.3</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">710.12</X>
              <Y dataType="Float">709.3</Y>
              <Z dataType="Float">0</Z>
            </posAbs>
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </vel>
            <velAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </velAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1629688379">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">4282489107</gameobj>
            <offset dataType="Int">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">807</H>
              <W dataType="Float">990</W>
              <X dataType="Float">-495</X>
              <Y dataType="Float">-403.5</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\mothership.Material.res</contentPath>
            </sharedMat>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3050298335">
            <active dataType="Bool">true</active>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4282489107</gameobj>
            <ignoreGravity dataType="Bool">false</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </linearVel>
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3916754159">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="2306839278">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="1400299600">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3050298335</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                  </position>
                  <radius dataType="Float">464.591278</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2459834734">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3050298335</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-6.42425537</X>
                    <Y dataType="Float">3.71795654</Y>
                  </position>
                  <radius dataType="Float">1909.01855</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">true</sensor>
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">2</_version>
            </shapes>
          </item>
          <item dataType="Struct" type="naves.MothershipController" id="3339513149">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4282489107</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="824942368" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="314663083">
            <item dataType="ObjectRef">3431736720</item>
            <item dataType="ObjectRef">2461510382</item>
            <item dataType="ObjectRef">4238497900</item>
            <item dataType="Type" id="2472585462" value="naves.MothershipController" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3421817160">
            <item dataType="ObjectRef">2347836743</item>
            <item dataType="ObjectRef">1629688379</item>
            <item dataType="ObjectRef">3050298335</item>
            <item dataType="ObjectRef">3339513149</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2347836743</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="801420961">ftM50XidRUqFuLO8jFBwKA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">mothership2</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4280487302">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="931888208">
        <_items dataType="Array" type="Duality.Component[]" id="4174107068">
          <item dataType="Struct" type="Duality.Components.Transform" id="2345834938">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">4280487302</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-710.125549</X>
              <Y dataType="Float">-709.30304</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-710.125549</X>
              <Y dataType="Float">-709.30304</Y>
              <Z dataType="Float">0</Z>
            </posAbs>
            <scale dataType="Float">0.2</scale>
            <scaleAbs dataType="Float">0.2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </vel>
            <velAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </velAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1627686574">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">4280487302</gameobj>
            <offset dataType="Int">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">807</H>
              <W dataType="Float">990</W>
              <X dataType="Float">-495</X>
              <Y dataType="Float">-403.5</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\mothership.Material.res</contentPath>
            </sharedMat>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3048296530">
            <active dataType="Bool">true</active>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">4280487302</gameobj>
            <ignoreGravity dataType="Bool">false</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </linearVel>
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="2535080450">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="36131216" length="4">
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="2804851004">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3048296530</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">0</X>
                    <Y dataType="Float">0</Y>
                  </position>
                  <radius dataType="Float">464.591278</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.CircleShapeInfo" id="438879126">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3048296530</parent>
                  <position dataType="Struct" type="Duality.Vector2">
                    <X dataType="Float">-6.42425537</X>
                    <Y dataType="Float">3.71795654</Y>
                  </position>
                  <radius dataType="Float">1909.01855</radius>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">true</sensor>
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">2</_version>
            </shapes>
          </item>
          <item dataType="Struct" type="naves.MothershipController" id="3337511344">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4280487302</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2249621870" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1641308450">
            <item dataType="ObjectRef">3431736720</item>
            <item dataType="ObjectRef">2461510382</item>
            <item dataType="ObjectRef">4238497900</item>
            <item dataType="ObjectRef">2472585462</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3086276362">
            <item dataType="ObjectRef">2345834938</item>
            <item dataType="ObjectRef">1627686574</item>
            <item dataType="ObjectRef">3048296530</item>
            <item dataType="ObjectRef">3337511344</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2345834938</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2598884050">HEaKDKn8x0ukqg9f1VpaXQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">mothership1</name>
      <parent />
      <prefabLink />
    </item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
