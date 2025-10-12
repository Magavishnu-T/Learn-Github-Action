FROM openjdk:17
EXPOSE 8080
COPY target/company-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]


# kubectl apply -f zookeeper-deployment.yaml
# kubectl apply -f kafka-deployment.yaml
# kubectl apply -f kafka-ui-deployment.yaml 
# kubectl exec -it kafka-deployment-6cc5777dd5-q2wgm -- bash
# kafka-topics --create --bootstrap-server localhost:29092 --replication-factor 1 --partitions 1 --topic company_kafka_topic
# kubectl port-forward svc/kafka-ui 8080:8080
# kubectl create configmap activemq-console-users --from-file=jetty-realm.properties
# kubectl apply -f activemq-deployment.yaml
# kubectl port-forward svc/activemq-service 8161:8161
# kubectl apply -f apicurio-deployment.yaml
# kubectl port-forward svc/apicurio-registry 8083:8080

# docker build -t company-details-service:latest .
# docker run -p 8080:8080 company-details-service:latest no need
# docker build -t company-details-service:latest . no need
# minikube image load company-details-service:latest
# helm install company-details chart/company-details-service
# helm upgrade --install company-details chart/company-details-service
